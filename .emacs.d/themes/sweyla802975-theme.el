(deftheme sweyla802975
  "")

(custom-theme-set-faces
 'sweyla802975
 ;; ((background-color . "#000203")
 ;;  (background-mode . light)
 ;;  (border-color . "#323232")
 ;;  (cursor-color . "#ffffff")
 ;;  (foreground-color . "#ffffff")
 ;;  (mouse-color . "black"))
 `(fringe ((t (:background "#323232"))))
 `(mode-line ((t (:foreground "#ffffff" :background "#323232"))))
 `(region ((t (:background "#323232"))))
 `(font-lock-builtin-face ((t (:foreground "#2a6e8e"))))
 `(font-lock-comment-face ((t (:foreground "#9719ea"))))
 `(font-lock-function-name-face ((t (:foreground "#3b00ff"))))
 `(font-lock-keyword-face ((t (:foreground "#00599c"))))
 `(font-lock-string-face ((t (:foreground "#6900bf"))))
 `(font-lock-type-face ((t (:foreground"#ffffff"))))
 `(font-lock-constant-face ((t (:foreground "#cd2de4"))))
 `(font-lock-variable-name-face ((t (:foreground "#c70dff"))))
 `(minibuffer-prompt ((t (:foreground "#ffffff" :bold t))))
 `(font-lock-warning-face ((t (:foreground "red" :bold t))))
 )

(provide-theme 'sweyla802975)
