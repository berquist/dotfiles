(set-frame-font "Panic Sans-11")
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package elpy
  :init
  (elpy-enable))

;; (use-package lsp-mode)
