;;; h5dump.el --- Navigate through h5dump output -*- lexical-binding: t -*-

(define-derived-mode h5dump-mode prog-mode "h5dump"
  "Major mode for inspecting the raw output of h5dump."
  ;; Since this isn't really code, more like semi-structured text, there are
  ;; no comments, just block delimiters.  We need these only in order to
  ;; satisfy `hs-grok-mode-type'.
  (setq-local comment-start ""
              comment-end "")
  ;; entry syntax of `hs-special-modes-alist':
  ;; '(MODE
  ;;   START
  ;;   END
  ;;   COMMENT-START
  ;;   FORWARD-SEXP-FUNC
  ;;   ADJUST-BEG-FUNC
  ;;   FIND-BLOCK-BEGINNING-FUNC
  ;;   FIND-NEXT-BLOCK-FUNC
  ;;   LOOKING-AT-BLOCK-START-P-FUNC)
  (add-to-list 'hs-special-modes-alist '(h5dump-mode "{" "}" nil nil)))

;;;###autoload
(add-to-list 'auto-mode-alist (cons (purecopy "\\.h5dump\\'") 'h5dump-mode))

(provide 'h5dump)

;;; h5dump.el ends here
