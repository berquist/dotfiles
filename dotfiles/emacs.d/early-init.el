;;; early-init.el -*- lexical-binding: t; -*-

;; TODO look for a backport instead?
(when (not (macrop 'setopt))
  (defalias 'setopt 'setq-default))

(setq gc-cons-threshold (* 1024 1024 100))
(set-language-environment "UTF-8")
(setq package-enable-at-startup nil)

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
