;; -*- lexical-binding: t; coding: utf-8; -*-

(defvar elpaca-installer-version 0.11)
(defvar elpaca-directory (expand-file-name "elpaca/" user-emacs-directory))
(defvar elpaca-builds-directory (expand-file-name "builds/" elpaca-directory))
(defvar elpaca-repos-directory (expand-file-name "repos/" elpaca-directory))
(defvar elpaca-order '(elpaca :repo "https://github.com/progfolio/elpaca.git"
                              :ref nil :depth 1 :inherit ignore
                              :files (:defaults "elpaca-test.el" (:exclude "extensions"))
                              :build (:not elpaca--activate-package)))
(let* ((repo  (expand-file-name "elpaca/" elpaca-repos-directory))
       (build (expand-file-name "elpaca/" elpaca-builds-directory))
       (order (cdr elpaca-order))
       (default-directory repo))
  (add-to-list 'load-path (if (file-exists-p build) build repo))
  (unless (file-exists-p repo)
    (make-directory repo t)
    (when (<= emacs-major-version 28) (require 'subr-x))
    (condition-case-unless-debug err
        (if-let* ((buffer (pop-to-buffer-same-window "*elpaca-bootstrap*"))
                  ((zerop (apply #'call-process `("git" nil ,buffer t "clone"
                                                  ,@(when-let* ((depth (plist-get order :depth)))
                                                      (list (format "--depth=%d" depth) "--no-single-branch"))
                                                  ,(plist-get order :repo) ,repo))))
                  ((zerop (call-process "git" nil buffer t "checkout"
                                        (or (plist-get order :ref) "--"))))
                  (emacs (concat invocation-directory invocation-name))
                  ((zerop (call-process emacs nil buffer nil "-Q" "-L" "." "--batch"
                                        "--eval" "(byte-recompile-directory \".\" 0 'force)")))
                  ((require 'elpaca))
                  ((elpaca-generate-autoloads "elpaca" repo)))
            (progn (message "%s" (buffer-string)) (kill-buffer buffer))
          (error "%s" (with-current-buffer buffer (buffer-string))))
      ((error) (warn "%s" err) (delete-directory repo 'recursive))))
  (unless (require 'elpaca-autoloads nil t)
    (require 'elpaca)
    (elpaca-generate-autoloads "elpaca" repo)
    (let ((load-source-file-function nil)) (load "./elpaca-autoloads"))))
(add-hook 'after-init-hook #'elpaca-process-queues)
(elpaca `(,@elpaca-order))

;; Install use-package support
(elpaca elpaca-use-package
  ;; Enable :elpaca use-package keyword.
  (elpaca-use-package-mode)
  ;; Assume :elpaca t unless otherwise specified.
  (setopt elpaca-use-package-by-default t))

;; Block until current queue processed.
(elpaca-wait)

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

(use-package eglot
  :hook (prog-mode . eglot-ensure))

(use-package eglot-jl
  :config
  (when (executable-find "julialauncher")
    (setopt eglot-jl-julia-command "julialauncher"))
  :init
  (eglot-jl-init))
(use-package julia-repl
  :hook (julia-mode . julia-repl-mode)
  :custom
  (julia-repl-inferior-buffer-name-base "julia-repl")
  (julia-repl-set-terminal-backend 'ansi-term)
  :config
  (when (executable-find "julialauncher")
    (push '(default-juliaup "julialauncher") julia-repl-executable-records)))

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
