;;; h5dump.el --- Navigate through h5dump output -*- lexical-binding: t -*-

(require 'rx)

(defconst h5dump--hdf5-keywords
  '("ATTRIBUTE"
    "COMMENT"
    "DATA"
    "DATASET"
    "DATASPACE"
    "DATATYPE"
    "GROUP"
    "SOFTLINK"))

(defconst h5dump--hdf5-datatypes-integer
  '("H5T_STD_I8BE"
    "H5T_STD_I8LE"
    "H5T_STD_I16BE"
    "H5T_STD_I16LE"
    "H5T_STD_I32BE"
    "H5T_STD_I32LE"
    "H5T_STD_I64BE"
    "H5T_STD_I64LE"
    "H5T_STD_U8BE"
    "H5T_STD_U8LE"
    "H5T_STD_U16BE"
    "H5T_STD_U16LE"
    "H5T_STD_U32BE"
    "H5T_STD_U32LE"
    "H5T_STD_U64BE"
    "H5T_STD_U64LE"
    "H5T_NATIVE_CHAR"
    "H5T_NATIVE_UCHAR"
    "H5T_NATIVE_SHORT"
    "H5T_NATIVE_USHORT"
    "H5T_NATIVE_INT"
    "H5T_NATIVE_UINT"
    "H5T_NATIVE_LONG"
    "H5T_NATIVE_ULONG"
    "H5T_NATIVE_LLONG"
    "H5T_NATIVE_ULLONG"))

(defconst h5dump--hdf5-datatypes-float
  '("H5T_IEEE_F32BE"
    "H5T_IEEE_F32LE"
    "H5T_IEEE_F64BE"
    "H5T_IEEE_F64LE"
    "H5T_NATIVE_FLOAT"
    "H5T_NATIVE_DOUBLE"
    "H5T_NATIVE_LDOUBLE"))

(defconst h5dump--hdf5-datatypes-bitfield
  '("H5T_STD_B8BE"
    "H5T_STD_B8LE"
    "H5T_STD_B16BE"
    "H5T_STD_B16LE"
    "H5T_STD_B32BE"
    "H5T_STD_B32LE"
    "H5T_STD_B64BE"
    "H5T_STD_B64LE"))

(defconst h5dump--hdf5-datatypes
  (append
   h5dump--hdf5-datatypes-integer
   h5dump--hdf5-datatypes-float
   h5dump--hdf5-datatypes-bitfield
   '("H5T_ARRAY"
     "H5T_COMPOUND"
     "H5T_REFERENCE"
     "H5T_STRING"
     "H5T_VLEN")))

(defconst h5dump--hdf5-constants
  '("SCALAR"
    "SIMPLE"))

(defconst h5dump--hdf5-variables
  '("CSET"
    "CTYPE"
    "HARDLINK"
    "LINKTARGET"
    "STRPAD"
    "STRSIZE"))

(defvar h5dump-font-lock-definitions
  (append
   `((,(eval `(rx symbol-start "HDF5" symbol-end)) . font-lock-warning-face)
     (,(eval `(rx symbol-start (or ,@h5dump--hdf5-keywords) symbol-end)) . font-lock-keyword-face)
     (,(eval `(rx symbol-start (or ,@h5dump--hdf5-datatypes) symbol-end)) . font-lock-type-face)
     (,(eval `(rx symbol-start (or ,@h5dump--hdf5-constants) symbol-end)) . font-lock-constant-face)
     (,(eval `(rx symbol-start (or ,@h5dump--hdf5-variables) symbol-end)) . font-lock-variable-face))))

(define-derived-mode h5dump-mode prog-mode "h5dump"
  "Major mode for inspecting the raw output of h5dump."
  ;; Since this isn't really code, more like semi-structured text, there are
  ;; no comments, just block delimiters.  We need these only in order to
  ;; satisfy `hs-grok-mode-type'.
  (setq-local comment-start ""
              comment-end "")
  (setq-local font-lock-defaults '(h5dump-font-lock-definitions))
  ;; TODO also handle []
  (add-to-list 'hs-special-modes-alist '(h5dump-mode "{" "}" nil nil)))

;;;###autoload
(add-to-list 'auto-mode-alist (cons (purecopy "\\.h5dump\\'") 'h5dump-mode))

(provide 'h5dump)

;;; h5dump.el ends here
