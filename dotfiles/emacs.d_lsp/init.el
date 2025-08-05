;; -*- lexical-binding: t; coding: utf-8; -*-

(require 'package)
(setopt
 package-enable-at-startup nil
 package-archives '(("melpa" . "http://melpa.org/packages/")
                    ("nongnu" . "https://elpa.nongnu.org/nongnu/")
                    ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setopt
 use-package-always-defer t
 use-package-always-ensure t
 use-package-verbose t)

;; Load this before any other third-party packages.
(use-package no-littering
  :init
  (require 'no-littering))

(setq-default line-number-mode t
              column-number-mode t
              indent-tabs-mode nil
              tab-width 4)
(setopt display-line-numbers-grow-only t)
(global-display-line-numbers-mode 1)
(global-eldoc-mode 1)
(electric-pair-mode 1)

(setopt
 warning-suppress-types '((comp)
                          (direnv)
                          (emacs)
                          (lsp-mode)
                          (ox-pandoc)))

(bind-key (kbd "C-x C-b") 'switch-to-buffer)
(bind-key (kbd "C-x b") 'ibuffer)
(bind-key (kbd "C-c b") 'switch-to-previous-buffer)

(bind-key (kbd "C-x C-h") 'replace-string)

(use-package ef-themes
  :init
  (load-theme 'ef-bio t))

(setopt flymake-mode-line-lighter "FM")

(use-package vertico
  :custom
  (vertico-cycle t)
  :init
  (vertico-mode))

(use-package orderless
  :ensure t)

(use-package marginalia
  :init
  (marginalia-mode))

(setopt
 completions-format 'vertical
 completion-ignore-case t
 read-buffer-completion-ignore-case t
 read-file-name-completion-ignore-case t
 completion-styles '(orderless basic)
 completion-category-overrides '((file (styles basic partial-completion))))

(use-package treesit-auto
  :custom
  (treesit-auto-install t)
  :config
  (global-treesit-auto-mode)
  :init
  (require 'treesit-auto))

(use-package corfu
  :disabled t
  :custom
  (corfu-cycle t)
  :init
  (global-corfu-mode))

(use-package company)

(use-package lsp-mode
  :hook (python-mode . lsp-deferred)
  :custom
  (lsp-headerline-breadcrumb-enable nil)
  (lsp-lens-enable nil))

(use-package rustic
  :custom
  (rustic-format-trigger 'on-save)
  (rustic-indent-method-chain t))

(use-package lsp-java
  :hook (java-mode . lsp))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
