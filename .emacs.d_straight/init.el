;; bootstrap installation of straight.el

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

(straight-use-package 'use-package)

;; Load this before any other third-party packages.
(use-package no-littering
  :straight t
  :init
  (require 'no-littering))

(bind-key (kbd "C-x C-b") 'switch-to-buffer)
(bind-key (kbd "C-x b") 'ibuffer)
(bind-key (kbd "C-c b") 'switch-to-previous-buffer)

(bind-key (kbd "C-x C-h") 'replace-string)

(set-frame-font "Panic Sans-11")
(use-package dracula-theme
  :straight t)
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

(use-package spongebob
  :straight (:host gitlab :repo "dustyweb/spongebob.el"))

(use-package elcord
  :hook (after-init . elcord-mode)
  ;; No work machines (laptop, cluster)
  :if (not (string-match "isi" (shell-command-to-string "hostname -f")))
  :config
  (setq elcord-refresh-rate 5)
  (setq elcord-use-major-mode-as-main-icon t))
