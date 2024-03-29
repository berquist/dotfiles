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

(setq-default line-number-mode t
              column-number-mode t
              indent-tabs-mode nil
              tab-width 4)
(setq display-line-numbers-grow-only t)
(global-display-line-numbers-mode 1)
(global-eldoc-mode 1)
(electric-pair-mode 1)

(setq warning-suppress-types '((comp)
                               (direnv)
                               (emacs)
                               (lsp-mode)
                               (ox-pandoc)))

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

(use-package corfu
  :disabled t
  :config
  (setq corfu-cycle t)
  :init
  (global-corfu-mode))

(use-package company)

(use-package lsp-mode
  :hook (python-mode . lsp)
  :config
  (setq lsp-lens-enable nil))

(use-package julia-mode)
(use-package lsp-julia
  :hook (julia-mode . lsp))

(use-package rustic
  :config
  (setq rustic-format-trigger 'on-save)
  (setq rustic-indent-method-chain t))

(use-package lsp-java
  :hook (java-mode . lsp))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(vterm lox-mode corfu use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
