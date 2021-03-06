(setq straight-use-package-by-default t)
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(setq use-package-always-defer t
      use-package-verbose t)
(straight-use-package 'use-package)

;; Load this before any other third-party packages.
(use-package no-littering
  :straight t
  :init
  (require 'no-littering))

(bind-key (kbd "C-x C-b") 'switch-to-buffer)
(bind-key (kbd "C-x b") 'ibuffer)
(bind-key (kbd "C-c b") 'switch-to-previous-buffer)

(set-frame-font "Panic Sans-11")
(use-package dracula-theme)
(load-theme 'dracula t)

(use-package ido
  :custom
  (ido-enable-flex-matching t)
  (ido-everywhere t)
  ;; wow, that *is* annoying!
  (ido-use-filename-at-point nil)
  (ido-use-url-at-point nil)
  :init
  (ido-mode t))

(use-package org)
