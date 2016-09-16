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

(setq
 use-package-always-defer t
 use-package-always-ensure t
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
 '(browse-url-browser-function (quote browse-url-firefox))
 '(c-basic-offset 4)
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
 '(completions-format (quote vertical))
 '(custom-safe-themes
   (quote
    ("1f2673f43c0315d7cbf860bfead8e32b0dfbfa55662db2813e462da9d95ec14c" "40c66989886b3f05b0c4f80952f128c6c4600f85b1f0996caa1fa1479e20c082" "59ee922af44ffccea18ba4aa311bffedc06fe66dfe957bf62d046164eec30d2d" "67b5fb678e7669c3272b3e6333e7f728682bc2a45d8598938c48796745cd246a" "66df3ea9d31e26883f5b3cba46363418910b11101ad9bbcb65b7b459c8fdaf6f" "e9a57f29be1e80518313ee1994a9a46113462b6af1e97340a5943008b2c1be82" "75ca64e5e4005637575c27f0c1d43ad59f94873ee52356508380adcee99e5bd7" default)))
 '(fortran-comment-region "C")
 '(git-gutter:handled-backends (quote (git svn hg bzr)))
 '(git-gutter:hide-gutter t)
 '(global-auto-revert-mode t)
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
 '(ruby-indent-level 4)
 '(tabbar-separator (quote (0.5)))
 '(tabbar-use-images nil)
 '(vc-follow-symlinks t))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
