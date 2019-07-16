(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("2a14752b82660cf074d5e910fdd6933b1df2ec992a00e38aa53c9471a9f823dc" default)))
 '(font-latex-math-environments
   (quote
    ("display" "displaymath" "equation" "eqnarray" "gather" "math" "multline" "align" "alignat" "xalignat" "xxalignat" "flalign" "dmath")))
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t
      ("pdflatex"))
     ("T1" "fontenc" t
      ("pdflatex"))
     ("" "graphicx" t)
     ("" "grffile" t)
     ("" "longtable" nil)
     ("" "wrapfig" nil)
     ("" "rotating" nil)
     ("normalem" "ulem" t)
     ("" "amsmath" t)
     ("" "textcomp" t)
     ("" "amssymb" t)
     ("" "capt-of" nil)
     ("colorlinks=true" "hyperref" nil))))
 '(safe-local-variable-values
   (quote
    ((eval progn
           (interactive)
           (flycheck-mode nil))
     (eval progn
           (flycheck-mode toggle))
     (eval progn
           (flycheck-mode nil))
     (eval wc-mode t)
     (dtrt-indent-mode . 0))))
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-preview ((t (:background "midnight blue" :foreground "wheat"))))
 '(company-preview-common ((t (:inherit company-preview :foreground "salmon"))))
 '(company-scrollbar-bg ((t (:background "chocolate"))))
 '(company-scrollbar-fg ((t (:background "IndianRed4"))))
 '(company-template-field ((t (:background "light sea green" :foreground "white"))))
 '(company-tooltip ((t (:background "dark slate gray" :foreground "white"))))
 '(company-tooltip-selection ((t (:background "DarkOrange3"))))
 '(fixed-pitch ((t (:family "Fira Mono"))))
 '(ivy-action ((t (:inherit font-lock-builtin-face :foreground "Cyan"))))
 '(ivy-virtual ((t (:inherit font-lock-builtin-face :foreground "magenta")))))
