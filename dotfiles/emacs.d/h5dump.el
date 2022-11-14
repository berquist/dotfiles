;;; h5dump.el --- Navigate through h5dump output -*- lexical-binding: t -*-

(require 'rx)

;; TODO splice all these in
;; TODO "HDF5" is like a singleton header
;; TODO "SCALAR" is special
(defconst h5dump--hdf5-keywords
  '("ATTRIBUTE"
    "DATA"
    "DATASET"
    "DATASPACE"
    "DATATYPE"
    "GROUP"))

(defconst h5dump--hdf5-datatypes
  '("H5T_STD_U8LE"
    "H5T_STD_U32LE"))

(defvar h5dump-font-lock-definitions
  (append
   `((,(rx symbol-start (or "H5T_STD_U8LE" "H5T_STD_U32LE") symbol-end) . font-lock-constant-face)
     (,(rx symbol-start (or "ATTRIBUTE" "DATA" "DATASET" "DATASPACE" "DATATYPE" "GROUP") symbol-end) . font-lock-keyword-face)
     (,(rx symbol-start (or "SCALAR") symbol-end) . font-lock-constant-face))))

(define-derived-mode h5dump-mode prog-mode "h5dump"
  "Major mode for inspecting the raw output of h5dump."
  ;; Since this isn't really code, more like semi-structured text, there are
  ;; no comments, just block delimiters.  We need these only in order to
  ;; satisfy `hs-grok-mode-type'.
  (setq-local comment-start ""
              comment-end "")
  (setq-local font-lock-defaults '(h5dump-font-lock-definitions))
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
