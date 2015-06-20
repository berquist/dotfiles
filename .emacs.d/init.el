;;; -*- Mode: Emacs-Lisp -*-

(setq user-full-name "Eric Berquist")
(setq user-mail-address "eric.berquist@gmail.com")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; General configuration

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; took some tricks from http://www.aaronbedra.com/emacs.d/

;; turn off mouse interface early in startup to avoid momentary display
(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t
      initial-scratch-message nil
      initial-major-mode 'gfm-mode)

(setq transient-mark-mode t)   ;; visually show region
(setq line-number-mode t)      ;; show line numbers
(setq column-number-mode t)    ;; show column numbers
(setq-default transient-mark-mode t)
(setq-default line-number-mode t)
(setq-default column-number-mode t)
;; What's the difference between setq and setq-default?
(setq global-font-lock-mode t) ;; everything should use fonts
(setq font-lock-maximum-decoration t)

;; bells are annoying, stop ringing!
(setq-default visible-bell nil)
(setq-default audible-bell nil)
(setq ring-bell-function 'ignore)

(setq-default cursor-type '(hbar . 2))

(fset 'yes-or-no-p 'y-or-n-p)

;; death to tabs, tabs are evil
(setq-default indent-tabs-mode nil)

(require 'ido)
(ido-mode t)

;; What platform are we on? darwin, gnu/linux
(defvar system-type-as-string (prin1-to-string system-type))
(defun sys () system-type-as-string)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Backups/autosaving

;; let's live on the edge and disable backup and autosave
(setq backup-inhibited t)
(setq auto-save-default nil)

;; (setq backup-directory-alist `(("." . "~/.saves")))
;; (setq backup-by-copying t)
;; (setq tramp-auto-save-directory "~/.saves")

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
;; (custom-set-variables
;;  ‘(auto-save-file-name-transforms ‘((“.*” “~/.saves/\\1″ t)))
;;   ‘(backup-directory-alist ‘((“.*” . “~/.saves/”))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Packages: packages.el

(require 'package)
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(require 'cl)
;; Guarantee all packages are installed on start
(defvar packages-list
  '(
    ;; exec-path-from-shell
    ;; minimap
    mic-paren
    rainbow-mode
    cmake-mode
    auctex
    auctex-latexmk
    flycheck
    flycheck-pyflakes
    markdown-mode
    ;;; needed for markdown-preview-mode
    websocket
    pandoc-mode
    pkgbuild-mode
    ;;; themes
    plan9-theme
    )
  "List of packages needs to be installed at launch")

(defun has-package-not-installed ()
  (loop for p in packages-list
        when (not (package-installed-p p)) do (return t)
        finally (return nil)))
(when (has-package-not-installed)
  ;; Check for new packages (package versions)
  (message "%s" "Get latest versions of all packages...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; Install the missing packages
  (dolist (p packages-list)
    (when (not (package-installed-p p))
      (package-install p))))

;; Set the path properly on OS X.
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Parens and whitespace

(require 'mic-paren)
(paren-activate)

(require 'whitespace)
(setq whitespace-display-mappings
      '((space-mark   ?\ [?\u00B7] [?.])
        (space-mark   ?\xA0 [?\u00A4] [?_])
        (newline-mark ?\n [?\u21B5 ?\n]
                      [172 10] [?\u00AF ?\n]) ;; downwards arrow, ..., overscore
        (tab-mark     ?\t [9655 9])))
(setq whitespace-style
      '(face
        trailing
        tabs
        lines-tail
        newline
        empty
        indentation::tab
        indentation::space
        indentation
        space-after-tab::tab
        space-after-tab::space
        space-after-tab
        space-before-tab::tab
        space-before-tab::space
        space-before-tab
        tab-mark))
;; currently ignoring space-mark and newline-mark until I can enable them selectively

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Disable popup boxes

(defadvice yes-or-no-p (around prevent-dialog activate)
  "Prevent yes-or-no-p from activating a dialog"
  (let ((use-dialog-box nil))
    ad-do-it))
(defadvice y-or-n-p (around prevent-dialog-yorn activate)
  "Prevent y-or-n-p from activating a dialog"
  (let ((use-dialog-box nil))
    ad-do-it))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Keybindings

;; To reduce errors. Was: 'buffer-menu
(global-set-key "\C-x\C-b" 'switch-to-buffer)
;; Was: 'ido-switch-buffer
(global-set-key "\C-x\b" 'list-buffers)
(global-set-key (kbd "C-c b") 'switch-to-previous-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Theming

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (load-theme 'wombat2 t)
(load-theme 'plan9 t)

(when window-system
  (if (eq system-type 'gnu/linux)
      (and (set-face-attribute 'default nil :font "DejaVu Sans Mono-11")
           (set-frame-font "DejaVu Sans Mono-11")))
  (if (eq system-type 'darwin)
      (and (set-face-attribute 'default nil :font "Panic Sans-11")
           (set-frame-font "Panic Sans-11"))))
;; How can I set fallback fonts if these aren't installed?
;; Or just try from a list?

;; If we're windowed, set the transparency
;; Usage: (set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
(set-frame-parameter (selected-frame) 'alpha '(100 100))
(add-to-list 'default-frame-alist '(alpha 100 100))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Spelling

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))

;(dolist (mode '(emacs-lisp-mode-hook
;                inferior-lisp-mode-hook
;                python-mode-hook))
;  (add-hook mode
;            '(lambda ()
;               (flyspell-prog-mode))))

(global-set-key (kbd "<f8>") 'ispell-word) ;; built-in binding is M-$
(global-set-key (kbd "C-S-<f8>") 'flyspell-mode)
(global-set-key (kbd "C-M-<f8>") 'flyspell-buffer)
(global-set-key (kbd "C-<f8>") 'flyspell-check-previous-highlighted-word)
(defun flyspell-check-next-highlighted-word ()
  "Custom function to spell check next highlighted word"
  (interactive)
  (flyspell-goto-next-error)
  (ispell-word)
  )
(global-set-key (kbd "M-<f8>") 'flyspell-check-next-highlighted-word)

;; use hunspell when possible
;; (when (executable-find "hunspell")
;;   (setq-default ispell-program-name "hunspell")
;;   (setq ispell-really-hunspell t))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Flycheck

(add-hook 'after-init-hook #'global-flycheck-mode)
;; (add-hook 'python-mode-hook 'flycheck-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Pandoc

(require 'pandoc-mode)
(load "pandoc-mode")
(add-hook 'pandoc-mode-hook 'pandoc-load-default-settings)

(add-hook 'markdown-mode-hook 'pandoc-mode)
(add-hook 'latex-mode-hook 'pandoc-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CSS

(require 'rainbow-mode)
(defun my-css-mode-hook ()
  (rainbow-mode t))
(add-hook 'css-mode-hook 'my-css-mode-hook)

(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))

(my-global-rainbow-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; C/C++

(setq auto-mode-alist
     (append '(("\\.C$" . c++-mode)
               ("\\.cc$" . c++-mode)
               ("\\.cpp$" . c++-mode)
               ("\\.c$" . c-mode)
               ("\\.h$" . c++-mode)
               ("\\.hh$" . c++-mode)
               ("\\.hpp$" . c++-mode)
               ) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Makefiles

(setq auto-mode-alist
      (append '(("Makefile*\\'" . makefile-mode)
                ("makefile*\\'" . makefile-mode)
                ) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; FORTRAN

;; These might already be defaults, but it doesn't hurt.
(setq auto-mode-alist
      (append '(("\\.f\\'"   . fortran-mode)
                ("\\.F\\'"   . fortran-mode)
                ("\\.for\\'" . fortran-mode)
                ("\\.f90\\'" . f90-mode)
                ("\\.F90\\'" . f90-mode)
                ("\\.f95\\'" . f90-mode)
                ("\\.f03\\'" . f90-mode)
                ("\\.f08\\'" . f90-mode)
                ) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; PKGBUILDs

(require 'pkgbuild-mode)
(setq auto-mode-alist
      (append '(("/PKGBUILD/" . pkgbuild-mode)
                ) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CMAKE

(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("CMakeCache\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode)
                ) auto-mode-alist))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LaTeX

;; (require 'auctex-latexmk)
;; (auctex-latexmk-setup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Python

;; Use pyflakes instead of flake8 or pylint for syntax checking.
(require 'flycheck-pyflakes)
;; Don't disable these, since pyflakes might not be available.
;; (add-to-list 'flycheck-disabled-checkers 'python-flake8)
;; (add-to-list 'flycheck-disabled-checkers 'python-pylint)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Markdown

(require 'markdown-mode)

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.mdown\\'" . gfm-mode))

(add-to-list 'load-path "~/.emacs.d/markdown-preview-mode")
(require 'markdown-preview-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; docview

;; paging up and down globally
(fset 'doc-prev "\C-xo\C-x[\C-xo")
(fset 'doc-next "\C-xo\C-x]\C-xo")
(global-set-key (kbd "M-[") 'doc-prev)
(global-set-key (kbd "M-]") 'doc-next)

;; always refresh when the contents change
(add-hook 'doc-view-mode-hook 'auto-revert-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Other

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   [(\, wombat-bg)
    (\, wombat-red)
    (\, wombat-green)
    (\, wombat-green+1)
    (\, wombat-blue)
    "#333366" "#ccaa8f"
    (\, wombat-fg)])
 '(browse-url-browser-function (quote browse-url-firefox))
 '(custom-safe-themes
   (quote
    ("6eaebdc2426b0edfff9fd9a7610f2fe7ddc70e01ceb869aaaf88b5ebe326a0cd" "2d7e4feac4eeef3f0610bf6b155f613f372b056a2caae30a361947eab5074716" default)))
 '(flycheck-pylintrc "~/.pylintrc")
 '(global-flycheck-mode t)
 '(global-whitespace-mode t)
 '(ido-mode (quote both) nil (ido))
 '(markdown-command "multimarkdown")
 '(markdown-css-path
   "https://raw.githubusercontent.com/sindresorhus/github-markdown-css/gh-pages/github-markdown.css")
 '(markdown-enable-math t)
 '(markdown-link-space-sub-char "-")
 '(markdown-preview-style
   "https://raw.githubusercontent.com/sindresorhus/github-markdown-css/gh-pages/github-markdown.css")
 '(paren-delay nil)
 '(paren-highlight-at-point t)
 '(paren-highlight-offscreen t)
 '(preview-scale-function 1.0)
 '(py-fontify-shell-buffer-p t)
 '(vc-follow-symlinks t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(trailing-whitespace ((t (:background "#e57890"))))
 '(whitespace-empty ((t (:background "firebrick4" :foreground "firebrick"))))
 '(whitespace-newline ((t (:foreground "#99968b" :weight normal))))
 '(whitespace-space ((t (:background "#303030" :foreground "#424242"))))
 '(whitespace-tab ((t (:background "#303030" :foreground "#424242")))))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
