;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Begin initialization

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
;; Sometimes I get lazy...
(when window-system (menu-bar-mode 1))

(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t
      initial-scratch-message nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Packages: packages.el

(require 'package)
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t
      use-package-verbose t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Load configuration

(org-babel-load-file (concat user-emacs-directory "config.org"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; M-x customize

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
 '(c-basic-offset 2)
 '(c-default-style
   (quote
    ((java-mode . "java")
     (awk-mode . "awk")
     (other . "k&r"))))
 '(c-doc-comment-style
   (quote
    ((c-mode . javadoc)
     (java-mode . javadoc)
     (pike-mode . autodoc))))
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("48a84c0a889c0abf30255217b99361e05741ae97d04f37dfb641ea538207f5f6" "165464cd89e4407a38d47fa6ca727ce672d69ac7a044732b3ef028234a1637db" "40c66989886b3f05b0c4f80952f128c6c4600f85b1f0996caa1fa1479e20c082" "c58382b9c4fff1aa94b8e3f0f81b0212bb554e83f76957bab735f960a4c441b1" default)))
 ;; '(fci-rule-color "#f8fce8")
 '(fortran-comment-region "cccc")
 '(git-gutter:handled-backends (quote (git svn hg bzr)))
 '(git-gutter:hide-gutter t)
 ;; '(hl-paren-background-colors (quote ("#e8fce8" "#c1e7f8" "#f8e8e8")))
 ;; '(hl-paren-colors (quote ("#40883f" "#0287c8" "#b85c57")))
 '(indicate-buffer-boundaries (quote right))
 '(markdown-coding-system (quote utf-8))
 '(markdown-command
   "pandoc -c file://${HOME}/.emacs.d/github-pandoc.css -f markdown_github -t html5 --smart --mathjax --highlight-style pygments --standalone")
 '(markdown-css-path "file://${HOME}/.emacs.d/github-pandoc.css")
 '(markdown-enable-math t)
 '(markdown-link-space-sub-char "-")
 '(markdown-preview-style "file://${HOME}/.emacs.d/github-markdown.css")
 '(my-global-rainbow-mode nil)
 '(paren-delay nil)
 '(paren-highlight-at-point t)
 '(paren-highlight-offscreen t)
 '(preview-scale-function 1.0)
 '(py-fontify-shell-buffer-p t)
 ;; '(sml/active-background-color "#98ece8")
 ;; '(sml/active-foreground-color "#424242")
 ;; '(sml/inactive-background-color "#4fa8a8")
 ;; '(sml/inactive-foreground-color "#424242")
 '(tabbar-separator (quote (0.5)))
 '(tabbar-use-images nil)
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
