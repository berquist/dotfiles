;; -*- lexical-binding: t; coding: utf-8; -*-

(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-always-defer t
      use-package-always-ensure t
      use-package-verbose t)

;; Load this before any other third-party packages.
(use-package no-littering
  :init
  (require 'no-littering))

(use-package delight)

(setq-default line-number-mode t
              column-number-mode t
              indent-tabs-mode nil
              tab-width 4)
(setq display-line-numbers-grow-only t)
(global-display-line-numbers-mode 1)
(global-eldoc-mode 1)
(electric-pair-mode 1)

(bind-key (kbd "C-x C-b") 'switch-to-buffer)
(bind-key (kbd "C-x b") 'ibuffer)
(bind-key (kbd "C-c b") 'switch-to-previous-buffer)

(bind-key (kbd "C-x C-h") 'replace-string)

(use-package dracula-theme)
(use-package ef-themes
  :init
  (load-theme 'ef-bio t))

(setq flymake-mode-line-lighter "FM")

(use-package vertico
  :config
  (setq vertico-cycle t)
  :init
  (vertico-mode))

(use-package orderless
  :ensure t)

(use-package marginalia
  :init
  (marginalia-mode))

(setq completions-format 'vertical
      completion-ignore-case t
      read-buffer-completion-ignore-case t
      read-file-name-completion-ignore-case t
      completion-styles '(orderless basic)
      completion-category-overrides '((file (styles basic partial-completion))))

(use-package treesit-auto
  :config
  (setq treesit-auto-install t)
  (global-treesit-auto-mode)
  :init
  (require 'treesit-auto))

(use-package eglot
  :hook (prog-mode . eglot-ensure))

(use-package julia-ts-mode
  :mode "\\.jl\\'"
  :delight "Julia")
(use-package eglot-jl
  :config
  (when (executable-find "julialauncher")
    (setq eglot-jl-julia-command "julialauncher"))
  :init
  (eglot-jl-init))
(use-package julia-repl
  :hook (julia-mode . julia-repl-mode)
  :config
  (when (executable-find "julialauncher")
    (push '(default-juliaup "julialauncher") julia-repl-executable-records))
  (setq julia-repl-inferior-buffer-name-base "julia-repl")
  (setq julia-repl-set-terminal-backend 'ansi-term))

(use-package rust-mode)
;; (use-package rustic
;;   :config
;;   (setq rustic-format-trigger 'on-save)
;;   (setq rustic-indent-method-chain t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(julia-mode eglot-jl ef-themes dracula-theme no-littering use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
