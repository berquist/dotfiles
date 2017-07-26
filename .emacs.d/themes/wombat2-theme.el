;;; wombat2-theme.el --- The wombat color theme for Emacs.   -*-coding: utf-8 -*-
;; Copyright (C) 2009 Jesus Alvarez

;; Author: Jesus Alvarez <demizer.one@gmail.com>
;; Modified by: Eric Berquist <eric DOT berquist AT gmail DOT com>
;; URL: https://github.com/demizer/color-theme-wombat

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation; either version 2 of the License,
;; or (at your option) any later version.

;; This file is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; if not, write to the Free Software
;; Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301,
;; USA.

;;; Commentary:

;; This is my second color theme. Apologies for the formatting; this
;; file is automatically extracted from a LaTeX master file.

;;; Code:

(deftheme wombat2
  "Medium-contrast faces with a dark gray background (custom).
Adapted, with permission, from a Vim color scheme by Lars
H. Nielsen.  Basic, Font Lock, Isearch, Gnus, Message, and
Ansi-Color faces are included.")

(let ((class '((class color) (min-colors 89)))

      ;; Variables with '/' correspond to the ANSI spots, *not* the
      ;; actual colors they contain. Unless noted or commented out,
      ;; they are the original Wombat colors.

      ;; -x are darker, +x are lighter.
      (wombat-red-1    "red")
      (wombat/red      "#e5786d")
      (wombat-orange-1 "#f57900")
      (wombat-orange   "#e65c00")
      (wombat-orange+1 "#e9b96e")
      (wombat-orange+2 "#ffc125")
      (wombat-green-1  "#4bc98a")
      (wombat/green    "#95e454")
      (wombat/yellow   "#cae682")
      ;; (wombat/yellow   "#e7e784")
      (wombat-blue-2   "#006689")
      (wombat-blue-1   "#64a8d8")
      (wombat/blue     "#8ac6f2")
      (wombat/cyan     "#ccaa8f")
      ;; (wombat/cyan     "#00b7eb")
      (wombat/magenta  "#333366")
      (wombat-purple-1 "#cc99cc")
      (wombat-purple   "#663399")
      (wombat-pink-1   "#f283b6")
      (wombat-pink     "#f6b3df")
      (wombat/white    "#f6f3e8")

      (wombat-gray+2   "#a0a8b0")
      (wombat-gray+1   "#99968b")
      (wombat-gray     "#656565")
      (wombat-gray-1   "#454545")
      (wombat-gray-2   "#444444")
      (wombat-gray-3   "#343434")
      (wombat-gray-4   "#333333")
      (wombat-gray-5   "#303030")
      (wombat/black    "#242424")


      )

  (custom-theme-set-faces
   'wombat2
   `(default ((,class (:background ,wombat/black :foreground ,wombat/white))))
   `(cursor ((,class (:background ,wombat-blue-1)))) ;; ,wombat-gray; background: #656565 -> #64a8d8

   ;; Highlighting faces
   `(fringe ((,class (:background ,wombat-gray-5))))
   `(highlight ((,class (:background ,wombat-gray-1 :foreground "#ffffff"
                                     :underline t))))
   `(region ((,class (:background ,wombat-gray-2 :foreground ,wombat/white))))
   `(secondary-selection ((,class (:background ,wombat-blue-1 :foreground ,wombat/white :bold t)))) ;; background: ,wombat/magenta
   `(isearch ((,class (:background ,wombat-gray :foreground ,wombat/white)))) ;; background: ,wombat-gray-3, foreground: #857b6f
   `(isearch-fail ((,class (:background ,wombat-red-1))))
   `(lazy-highlight ((,class (:italic t :background ,wombat-purple :foreground ,wombat-gray+2)))) ;; background: "#384048"
   ; `(lazy-highlight-face ((,class (:foreground ,wombat-blue-2 :background ,wombat-orange+1))))
   ; `(trailing-whitespace ((,class (:background ,wombat/red))))
   ; `(whitespace-empty ((,class (:background "firebrick4" :foreground "firebrick"))))
   ; `(whitespace-newline ((,class (:foreground ,wombat-gray+1 :weight normal))))
   ; `(whitespace-space ((,class (:background ,wombat-gray-5 :foreground "#424242"))))
   ; `(whitespace-tab ((,class (:background ,wombat-gray-5 :foreground "#424242")))))

   ;; Mode line faces
   `(mode-line ((,class (:background ,wombat-gray-2 :foreground ,wombat/white))))
   `(mode-line-inactive ((,class (:background ,wombat-gray-3 :box (:line-width 1 :color "#857b6f" :style nil)))))
   ; `(mode-line-emphasis ((,class (:bold t))))
   ; `(mode-line-highlight ((,class (:background ,wombat-orange :box nil))))
   ; `(mode-line-buffer-id ((,class (:bold t :background "#424242" :weight bold))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,wombat/red))))
   `(escape-glyph ((,class (:foreground "#ddaa6f"))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,wombat/red))))
   `(font-lock-comment-face ((,class (:italic t :slant italic :foreground ,wombat-gray+1))))
   ; `(font-lock-comment-delimiter-face ((,class (:italic t :slant italic :foreground ,wombat-gray+1))))
   `(font-lock-constant-face ((,class (:foreground ,wombat/red))))
   ; `(font-lock-doc-face ((,class (:foreground ,wombat-pink-1))))
   `(font-lock-function-name-face ((,class (:foreground ,wombat/yellow :italic t))))
   `(font-lock-keyword-face ((,class (:foreground ,wombat/blue :weight bold))))
   ; `(font-lock-negation-char-face ((,class (:foreground ,wombat/red))))
   ; `(font-lock-preprocessor-face ((,class (:foreground ,wombat-red-1))))
   ; `(font-lock-regexp-grouping-backslash ((,class (:bold t :weight bold))))
   ; `(font-lock-regexp-grouping-construct ((,class (:bold t ,wombat/green))))
   `(font-lock-string-face ((,class (:foreground ,wombat/green))))
   `(font-lock-type-face ((,class (:foreground ,wombat-green-1 :weight bold)))) ;; foreground: #92a65e
   `(font-lock-variable-name-face ((,class (:foreground ,wombat-pink-1)))) ;; ,wombat/yellow
   `(font-lock-warning-face ((,class (:bold t :foreground ,wombat/red)))) ;; ,wombat/cyan

   ;; Button and link faces
   `(link ((,class (:foreground ,wombat/blue :underline t))))
   `(link-visited ((,class (:foreground ,wombat/red :underline t))))
   `(button ((,class (:background ,wombat-gray-4 :foreground ,wombat/white))))
   `(header-line ((,class (:background ,wombat-gray-5 :foreground "#e7f6da"))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,wombat/green))))
   `(gnus-group-news-1-low ((,class (:foreground ,wombat/green))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,wombat/yellow))))
   `(gnus-group-news-2-low ((,class (:foreground ,wombat/yellow))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,wombat/cyan))))
   `(gnus-group-news-3-low ((,class (:foreground ,wombat/cyan))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,wombat-gray+1))))
   `(gnus-group-news-4-low ((,class (:foreground ,wombat-gray+1))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,wombat/yellow))))
   `(gnus-group-news-5-low ((,class (:foreground ,wombat/yellow))))
   `(gnus-group-news-low ((,class (:foreground ,wombat-gray+1))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,wombat/green))))
   `(gnus-group-mail-1-low ((,class (:foreground ,wombat/green))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,wombat/yellow))))
   `(gnus-group-mail-2-low ((,class (:foreground ,wombat/yellow))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,wombat/cyan))))
   `(gnus-group-mail-3-low ((,class (:foreground ,wombat/cyan))))
   `(gnus-group-mail-low ((,class (:foreground ,wombat-gray+1))))
   `(gnus-header-content ((,class (:foreground ,wombat/blue))))
   `(gnus-header-from ((,class (:weight bold :foreground ,wombat/green))))
   `(gnus-header-subject ((,class (:foreground ,wombat/yellow))))
   `(gnus-header-name ((,class (:foreground ,wombat/blue))))
   `(gnus-header-newsgroups ((,class (:foreground ,wombat/yellow))))

   ;; Message faces
   `(message-header-name ((,class (:foreground ,wombat/blue :weight bold))))
   `(message-header-cc ((,class (:foreground ,wombat/green))))
   `(message-header-other ((,class (:foreground ,wombat/green))))
   `(message-header-subject ((,class (:foreground ,wombat/yellow))))
   `(message-header-to ((,class (:foreground ,wombat/yellow))))
   `(message-cited-text ((,class (:foreground ,wombat-gray+1))))
   `(message-separator ((,class (:foreground ,wombat/red :weight bold))))

   ;; Parens
   ; `(show-paren-match-face ((t (:background ,wombat-orange :foreground ,wombat/white :bold t))))
   ; `(show-paren-mismatch-face ((t (:background ,wombat-purple-1 :foreground ,wombat-blue-2))))
   ; `(paren-face-match ((t (:inherit show-paren-match-face))))
   ; `(paren-face-match-light ((t (:inherit show-paren-match-face))))
   ; `(paren-face-mismatch ((t (:inherit show-paren-mismatch-face))))

   ;; LaTeX
   `(font-latex-bold-face ((t (:foreground ,wombat-green-1))))
   `(font-latex-italic-face ((t (:inherit italic :foreground ,wombat-green-1))))
   `(font-latex-math-face ((t (:inherit font-lock-builtin-face))))
   `(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground ,wombat-blue-2 :weight bold))))
   `(font-latex-string-face ((t (:inherit font-lock-string-face))))
   `(font-latex-subscript-face ((t (:height 0.9))))
   `(font-latex-superscript-face ((t (:height 0.9))))
   `(font-latex-verbatim-face ((t (:inherit fixed-pitch :foreground "#91a5c1")))) ;; LightSteelBlue3
   `(font-latex-warning-face ((t (:inherit font-lock-warning-face))))

   ))

(custom-theme-set-variables
 'wombat2
 '(ansi-color-names-vector [,wombat/black ,wombat/red ,wombat/green ,wombat/yellow,
                            ,wombat/blue ,wombat/magenta ,wombat/cyan ,wombat/white]))

(provide-theme 'wombat2)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; wombat2-theme.el ends here

;; These are entries from the original translation used for the color-theme
;; package. I haven't organized them yet.

;; `(fixed-pitch ((t (:family "Bitstream Vera Sans Mono"))))
;; `(variable-pitch ((t (nil))))
;; `(shadow ((t (:foreground "grey70"))))
;; `(query-replace ((t (:foreground "#e65c00" :background "palevioletred2"))))

;; `(border ((,class (:background "#888a85"))))
;; `(border ((,class (:background ,wombat/black))))
;; `(highlight-changes-delete-face ((t (:foreground "red" :underline t))))
;; `(highlight-changes-face ((t (:foreground "red"))))
;; `(hl-line ((t (:background ,wombat-gray-1))))
;; `(comint-highlight-input ((t (:italic t :bold t))))
;; `(comint-highlight-prompt ((t (:foreground "#8ae234"))))

;; `(persp-selected-face ((t (:foreground ,wombat-blue-2))))
;; `(info-xref ((t (:foreground ,wombat/blue))))
;; `(info-xref-visited ((t (:foreground ,wombat-purple-1))))

;; `(buffer-menu-buffer ((t (:bold t :weight bold))))
;; `(minibuffer-prompt ((t (:bold t :background "#242424" :foreground "#8ac6f2"))))
;; `(tooltip ((t (:family "helv" :background "lightyellow" :foreground "black"))))
;; `(tool-bar ((t (:background "grey75" :foreground "black" :box (:line-width 1 :style released-button)))))
;; `(region ((t (:background "#444444" :foreground "white"))))
;; `(secondary-selection ((t (:background "#e65c00" :foreground "#f6f3e8"))))
;; `(zmacs-region ((t (:background "darkslateblue" :foreground "white"))))
;; `(widget-button ((t (:bold t :weight bold))))
;; `(widget-button-pressed ((t (:background "black" :foreground "red"))))
;; `(widget-documentation ((t (:background "white" :foreground "dark green"))))
;; `(widget-field ((t (:background "gray85" :foreground "black"))))
;; `(widget-inactive ((t (:background "red" :foreground "dim gray"))))
;; `(widget-single-line-field ((t (:background "gray85" :foreground "black"))))

;; `(vertical-border ((t (nil))))

;; `(comint-highlight-input ((t (:bold t :weight bold))))
;; `(comint-highlight-prompt ((t (:foreground "#f6f3e8"))))
;; (compilation-column-number ((t (:foreground "#f6f3e8"))))
;; (compilation-error ((t (:bold t :weight bold :foreground "white"))))
;; (compilation-info ((t (:bold t :foreground "Green1" :weight bold))))
;; (compilation-line-number ((t (:bold t :weight bold :foreground "white"))))
;; (compilation-warning ((t (:bold t :foreground "red" :weight bold))))
;; (completions-common-part ((t (:stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 138 :width normal :foundry "Bitstream" :family "Bitstream Vera Sans Mono"))))
;; (completions-first-difference ((t (:bold t :weight bold))))
;; (cparen-around-andor-face ((t (:bold t :foreground "maroon" :weight bold))))
;; (cparen-around-begin-face ((t (:foreground "maroon"))))
;; (cparen-around-conditional-face ((t (:bold t :foreground "RoyalBlue" :weight bold))))
;; (cparen-around-define-face ((t (:bold t :foreground "Blue" :weight bold))))
;; (cparen-around-lambda-face ((t (:foreground "LightSeaGreen"))))
;; (cparen-around-letdo-face ((t (:bold t :foreground "LightSeaGreen" :weight bold))))
;; (cparen-around-quote-face ((t (:foreground "SaddleBrown"))))
;; (cparen-around-set!-face ((t (:foreground "OrangeRed"))))
;; (cparen-around-syntax-rules-face ((t (:foreground "Magenta"))))
;; (cparen-around-vector-face ((t (:foreground "chocolate"))))
;; (cparen-binding-face ((t (:foreground "ForestGreen"))))
;; (cparen-binding-list-face ((t (:bold t :foreground "ForestGreen" :weight bold))))
;; (cparen-conditional-clause-face ((t (:foreground "RoyalBlue"))))
;; (cparen-normal-paren-face ((t (:foreground "grey50"))))
;; (cua-global-mark ((t (:background "yellow1" :foreground "black"))))
;; (cua-rectangle ((t (:background "maroon" :foreground "white"))))
;; (cua-rectangle-noselect ((t (:background "dimgray" :foreground "white"))))
;; (cperl-array-face ((t (:bold t :background "lightyellow2" :foreground "Blue" :weight bold))))
;; (cperl-hash-face ((t (:italic t :bold t :background "lightyellow2" :foreground "Red" :slant italic :weight bold))))
;; (cperl-nonoverridable-face ((t (:foreground "chartreuse3"))))
;; (custom-button ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style released-button)))))
;; (custom-button-mouse ((t (:background "grey90" :foreground "black" :box (:line-width 2 :style released-button)))))
;; (custom-button-pressed ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style pressed-button)))))
;; (custom-button-pressed-unraised ((t (:underline t :foreground "violet"))))
;; (custom-button-unraised ((t (:underline t))))
;; (custom-changed ((t (:background "blue" :foreground "white"))))
;; (custom-comment ((t (:background "dim gray"))))
;; (custom-comment-tag ((t (:foreground "gray80"))))
;; (custom-documentation ((t (nil))))
;; (custom-face-tag ((t (:bold t :weight bold :height 1.2 :family "helv"))))
;; (custom-group-tag ((t (:bold t :foreground "light blue" :weight bold :height 1.2))))
;; (custom-group-tag-1 ((t (:bold t :foreground "pink" :weight bold :height 1.2 :family "helv"))))
;; (custom-invalid ((t (:background "lightyellow" :foreground "red"))))
;; (custom-link ((t (:underline t :foreground "#8ac6f2"))))
;; (custom-modified ((t (:background "blue" :foreground "white"))))
;; (custom-rogue ((t (:background "black" :foreground "pink"))))
;; (custom-saved ((t (:underline t))))
;; (custom-set ((t (:background "white" :foreground "blue"))))
;; (custom-state ((t (:foreground "lime green"))))
;; (custom-themed ((t (:background "blue1" :foreground "white"))))
;; (custom-variable-button ((t (:bold t :underline t :weight bold))))
;; (custom-variable-tag ((t (:bold t :foreground "light blue"
;;                              :weight bold :height 1.2
;;                              :family "helv"))))
;; (custom-visibility ((t (:underline t :foreground "#8ac6f2" :height 0.8))))
;; (dropdown-list-face ((t (:family "Bitstream Vera Sans Mono"
;;                               :foundry "bitstream"
;;                               :width normal :weight normal
;;                               :slant normal :underline nil
;;                               :overline nil :strike-through nil
;;                               :box nil :inverse-video nil
;;                               :stipple nil :background "lightyellow"
;;                               :foreground "black" :height 121))))
;; (dropdown-list-selection-face ((t (:foreground "black" :stipple nil
;;                                             :inverse-video nil :box nil
;;                                             :strike-through nil
;;                                             :overline nil
;;                                             :underline nil :slant normal
;;                                             :weight normal :width normal
;;                                             :foundry "bitstream"
;;                                             :family "Bitstream Vera Sans Mono"
;;                                             :background "purple"
;;                                             :height 121))))
;; (eieio-custom-slot-tag-face ((t (:foreground "light blue"))))
;; (excerpt ((t (:italic t :slant italic))))
;; (extra-whitespace-face ((t (:background "pale green"))))
;; (ffap ((t (:foreground "#f6f3e8" :background "#242424"))))
;; (file-name-shadow ((t (:foreground "grey70"))))

;; (fringe ((t (:background "grey10"))))
;; (fixed ((t (:bold t :weight bold))))

;; (flymake-errline ((t (:background "#242424"))))
;; (flymake-warnline ((t (:background "#242424"))))
;; (flyspell-duplicate-face ((t (:bold t :foreground "Gold3" :underline t :weight bold))))
;; (flyspell-incorrect-face ((t (:bold t :foreground "OrangeRed" :underline t :weight bold))))
;; (ido-first-match ((t (:inherit zenburn-primary-1))))
;; (ido-only-match ((t (:inherit zenburn-primary-2))))
;; (ido-subdir ((t (:foreground ,zenburn-yellow))))
;; (info-header-node ((t (:italic t :bold t :foreground "white" :slant italic :weight bold))))
;; (info-header-xref ((t (:bold t :foreground "cyan" :weight bold))))
;; (info-menu-5 ((t (:foreground "red1"))))
;; (info-menu-header ((t (:bold t :weight bold :family "helv"))))
;; (info-node ((t (:italic t :bold t :foreground "white" :slant italic :weight bold))))
;; (info-xref ((t (:bold t :foreground "cyan" :weight bold))))
;; (info-xref-visited ((t (:foreground "#ad7fa8"))))

;; (makefile-space-face ((t (:background "hotpink"))))
;; (match ((t (:background "#444444"))))
;; (message-cited-text-face ((t (:foreground "white"))))
;; (message-header-cc-face ((t (:foreground "#4186be"))))
;; (message-header-name-face ((t (:foreground "white"))))
;; (message-header-newsgroups-face ((t (:bold t :foreground "Coral" :weight bold))))
;; (message-header-other-face ((t (:foreground "steel blue"))))
;; (message-header-subject-face ((t (:bold t :foreground "#4186be" :weight bold))))
;; (message-header-to-face ((t (:bold t :foreground "#4186be" :weight bold))))
;; (message-header-xheader-face ((t (:foreground "blue"))))
;; (message-separator-face ((t (:foreground "brown"))))
;; (next-error ((t (:foreground "white" :background "darkslateblue"))))
;; (nobreak-space ((t (:foreground "cyan" :underline t))))
;; (outline-1 ((t (:foreground "LightSkyBlue"))))
;; (outline-2 ((t (:foreground "LightGoldenrod"))))
;; (outline-3 ((t (:bold t :weight bold :foreground "Cyan"))))
;; (outline-4 ((t (:foreground "chocolate1"))))
;; (outline-5 ((t (:foreground "PaleGreen"))))
;; (outline-6 ((t (:bold t :weight bold :foreground "Aquamarine"))))
;; (outline-7 ((t (:foreground "LightSteelBlue"))))
;; (outline-8 ((t (:foreground "LightSalmon"))))
;; (semantic-dirty-token-face ((t (:background "gray10"))))
;; (semantic-unmatched-syntax-face ((t (:underline "red"))))
;; (senator-intangible-face ((t (:foreground "gray75"))))
;; (senator-momentary-highlight-face ((t (:background "gray30"))))
;; (senator-read-only-face ((t (:background "#664444"))))
;; (show-tabs-space ((t (:background "#e65c00"))))
;; (show-tabs-tab ((t (:background "#e65c00"))))
;; (speedbar-button-face ((t (:foreground "green3"))))
;; (speedbar-directory-face ((t (:foreground "light blue"))))
;; (speedbar-file-face ((t (:foreground "cyan"))))
;; (speedbar-highlight-face ((t (:background "sea green"))))
;; (speedbar-selected-face ((t (:foreground "red" :underline t))))
;; (speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
;; (speedbar-tag-face ((t (:foreground "yellow"))))
;; (tabbar-button ((t (:box '(:line-width 1 :color "gray72" :style released-button)))))
;; (tabbar-button-highlight ((t (nil))))
;; (tabbar-default ((t (:background "grey60"))))
;; (tabbar-highlight ((t (:underline t))))
;; (tabbar-selected ((t (:background "#f2f2f6" :foreground "black" :box nil))))
;; (tabbar-separator ((t (:height 0.7))))
;; (tabbar-unselected ((t (:foreground "grey30" :background "grey85" :box nil))))
