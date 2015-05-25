;; To start with, just use the generic mode template.

;; Highlighting:
;; 1. something for $rem/$end, $molecule/$end, etc., pairs
;; 2. rem variables
;;  they may or may not have an '=' between the keys and values
;;  the matching should be case-insensitive
;; Example:
;; $rem
;;  jobtype = nmr
;; EXCHANGE hf
;;   correlation   ccsd(t)
;;  mem_static = 2000
;; $end

(require 'generic-x)

(define-generic-mode
  'qchem-mode
  '("!")
  '( "method" "exchange" "correlation" "basis" )
  '(
    ("=" . 'font-lock-operator)
    (";" . 'font-lock-builtin))
  '("\\.in$" "\\.qcin$" "\\.out$" "\\.qcout$")
  nil
  "A mode for Q-Chem input and output files."
  )

(provide 'qchem-mode)
