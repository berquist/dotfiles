(deftheme ejb01
  "")

(custom-theme-set-faces
 'ejb01
 `(default ((t (:background "#1d2c33" :foreground "#ffffff"))))
 `(cursor ((t (:background "#fce94f"))))
 `(border ((t (:background "#111122"))))
 `(mouser ((t (:background "black"))))
 `(fringe ((t (:background "#111122"))))
 `(mode-line ((t (:foreground "#ffffff" :background "#595959"))))
 `(region ((t (:background "#0d2545"))))
 `(font-lock-builtin-face ((t (:foreground "#2486f0"))))
 `(font-lock-comment-face ((t (:foreground "#2961c2"))))
 `(font-lock-function-name-face ((t (:foreground "#00eda3"))))
 `(font-lock-keyword-face ((t (:foreground "#2c71af"))))
 `(font-lock-string-face ((t (:foreground "#29c0ff"))))
 `(font-lock-type-face ((t (:foreground"#8ae234"))))
 `(font-lock-constant-face ((t (:foreground "#0fe65b"))))
 `(font-lock-variable-name-face ((t (:foreground "#8737f6"))))
 `(minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
 `(font-lock-warning-face ((t (:foreground "red" :bold t))))
 )

(provide-theme 'ejb01)
