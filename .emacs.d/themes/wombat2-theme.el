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
      (wombat/black    "#242424"))

  (custom-theme-set-faces
   'wombat2
   `(default ((,class (:background ,wombat/black :foreground ,wombat/white))))
   `(cursor ((,class (:background ,wombat-blue-1)))) ;; ,wombat-gray; background: #656565 -> #64a8d8

   ;;; Highlighting faces
   `(fringe ((,class (:background ,wombat-gray-5))))
   `(highlight ((,class (:background ,wombat-gray-1 :foreground "#ffffff"
                                     :underline t))))
   `(region ((,class (:background ,wombat-gray-2 :foreground ,wombat/white))))
   `(secondary-selection ((,class (:background ,wombat-blue-1 :foreground ,wombat/white :bold t)))) ;; background: ,wombat/magenta
   `(isearch ((,class (:background ,wombat-gray :foreground ,wombat/white)))) ;; background: ,wombat-gray-3, foreground: #857b6f
   `(isearch-fail ((,class (:background ,wombat-red-1))))
   `(lazy-highlight ((,class (:italic t :background ,wombat-purple :foreground ,wombat-gray+2)))) ;; background: "#384048"
   ;; `(lazy-highlight-face ((,class (:foreground ,wombat-blue-2 :background ,wombat-orange+1))))

   ;;; whitespace-mode defines the following:
   ;;;   space, hspace, tab, newline, trailing, line, space-before-tab, indentation, big-indent, empty, space-after-tab
   ;; `(whitespace-space ((,class (:background ,wombat-gray-5 :foreground "#424242"))))
   ;; `(whitespace-space ((,class (:background ,wombat/green))))
   `(whitespace-hspace ((,class (:backgound ,wombat-purple))))
   `(whitespace-tab ((,class (:foreground ,wombat-blue-1))))
   `(whitespace-newline ((,class (:foreground "brown"))))
   `(whitespace-trailing ((,class (:foreground ,wombat/yellow :background ,wombat/red))))
   ;; `(whitespace-line ((,class ())))
   ;; This is for _the tab after the space_!
   `(whitespace-space-before-tab ((,class (:background ,wombat-pink))))
   ;; `(whitespace-indentation ((,class ())))
   ;; `(whitespace-big-indent ((,class ())))
   `(whitespace-empty ((,class (:background ,wombat/white))))
   ;; This is for _the tab before the space_!
   `(whitespace-space-after-tab ((,class (:background ,wombat-orange+2))))

   ;;; General faces
   `(error ((,class (:foreground ,wombat-red-1))))
   `(warning ((,class (:foreground ,wombat-orange-1))))
   `(success ((,class (:foreground ,wombat/green))))

   ;;; Mode line faces
   `(mode-line ((,class (:background ,wombat-gray-2 :foreground ,wombat/white))))
   `(mode-line-inactive ((,class (:background ,wombat-gray-3 :box (:line-width 1 :color "#857b6f" :style nil)))))
   ;; `(mode-line-emphasis ((,class (:bold t))))
   ;; `(mode-line-highlight ((,class (:background ,wombat-orange :box nil))))
   ;; `(mode-line-buffer-id ((,class (:bold t :background "#424242" :weight bold))))
   `(compilation-mode-line-exit ((,class (:inherit compilation-info :weight bold))))
   `(compilation-mode-line-fail ((,class (:inherit compilation-error :weight bold))))
   `(compilation-mode-line-run ((,class (:inherit compilation-warning :weight bold))))

   ;;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,wombat/red))))
   `(escape-glyph ((,class (:foreground "#ddaa6f"))))

   ;;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,wombat/red))))
   `(font-lock-comment-face ((,class (:italic t :slant italic :foreground ,wombat-gray+1))))
   ;; `(font-lock-comment-delimiter-face ((,class (:italic t :slant italic :foreground ,wombat-gray+1))))
   `(font-lock-constant-face ((,class (:foreground ,wombat/red))))
   ;; `(font-lock-doc-face ((,class (:foreground ,wombat-pink-1))))
   `(font-lock-function-name-face ((,class (:foreground ,wombat/yellow :italic t))))
   `(font-lock-keyword-face ((,class (:foreground ,wombat/blue :weight bold))))
   ;; `(font-lock-negation-char-face ((,class (:foreground ,wombat/red))))
   ;; `(font-lock-preprocessor-face ((,class (:foreground ,wombat-red-1))))
   ;; `(font-lock-regexp-grouping-backslash ((,class (:bold t :weight bold))))
   ;; `(font-lock-regexp-grouping-construct ((,class (:bold t ,wombat/green))))
   `(font-lock-string-face ((,class (:foreground ,wombat/green))))
   `(font-lock-type-face ((,class (:foreground ,wombat-green-1 :weight bold)))) ;; foreground: #92a65e
   `(font-lock-variable-name-face ((,class (:foreground ,wombat-pink-1)))) ;; ,wombat/yellow
   `(font-lock-warning-face ((,class (:bold t :foreground ,wombat/red)))) ;; ,wombat/cyan

   ;;; Button and link faces
   `(button ((,class (:background ,wombat-gray-4 :foreground ,wombat/white))))
   `(header-line ((,class (:background ,wombat-gray-5 :foreground "#e7f6da"))))
   `(link ((,class (:foreground ,wombat/blue :underline t))))
   `(link-visited ((,class (:foreground ,wombat/red :underline t))))

   ;;; Company
   `(company-preview ((,class (:background "midnight blue" :foreground "wheat"))))
   `(company-preview-common ((,class (:inherit company-preview :foreground "salmon"))))
   `(company-scrollbar-bg ((,class (:background "chocolate"))))
   `(company-scrollbar-fg ((,class (:background "IndianRed4"))))
   `(company-template-field ((,class (:background "light sea green" :foreground "white"))))
   `(company-tooltip ((,class (:background "dark slate gray" :foreground "white"))))
   `(company-tooltip-selection ((,class (:background "DarkOrange3"))))

   ;;; Parens
   `(show-paren-match ((,class (:background ,wombat-orange :foreground ,wombat/white :bold t))))
   `(show-paren-mismatch ((,class (:background ,wombat-purple-1 :foreground ,wombat-blue-2))))
   ;; TODO show-paren-match-expression? I don't use expression mode.

   ;;; LaTeX
   `(font-latex-bold-face ((t (:foreground ,wombat-green-1))))
   `(font-latex-italic-face ((t (:inherit italic :foreground ,wombat-green-1))))
   `(font-latex-math-face ((t (:inherit font-lock-builtin-face))))
   `(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground ,wombat-blue-2 :weight bold))))
   `(font-latex-string-face ((t (:inherit font-lock-string-face))))
   `(font-latex-subscript-face ((t (:height 0.9))))
   `(font-latex-superscript-face ((t (:height 0.9))))
   `(font-latex-verbatim-face ((t (:inherit fixed-pitch :foreground "#91a5c1")))) ;; LightSteelBlue3
   `(font-latex-warning-face ((t (:inherit font-lock-warning-face)))))

  (custom-theme-set-variables
   'wombat2
   `(ansi-color-names-vector [,wombat/black ,wombat/red ,wombat/green ,wombat/yellow ,wombat/blue ,wombat/magenta ,wombat/cyan ,wombat/white])))

(provide-theme 'wombat2)

;;; wombat2-theme.el ends here
