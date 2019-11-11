(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
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

(bind-key (kbd "C-x C-b") 'switch-to-buffer)
(bind-key (kbd "C-x b") 'ibuffer)
(bind-key (kbd "C-c b") 'switch-to-previous-buffer)

(bind-key (kbd "C-x C-h") 'replace-string)

(set-frame-font "Panic Sans-11")
(use-package monochrome-theme)
(load-theme 'monochrome t)

(use-package ido
  :config
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  ;; wow, that *is* annoying!
  (setq ido-use-filename-at-point nil)
  (setq ido-use-url-at-point nil)
  :init
  (ido-mode t))

(use-package elpy
  :hook (elpy-mode . (lambda () (highlight-indentation-mode -1)))
  :init
  (elpy-enable))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("725a0ac226fc6a7372074c8924c18394448bb011916c05a87518ad4563738668" default)))
 '(package-selected-packages (quote (gotham-theme elpy use-package)))
 '(safe-local-variable-values
   (quote
    ((pyvenv-workon . qcelemental)
     (pyvenv-workon . cclib_berquist)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
