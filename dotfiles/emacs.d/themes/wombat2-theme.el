;;; wombat2-theme.el --- The wombat color theme for Emacs. -*- lexical-binding: t; coding: utf-8; -*-

;; Copyright (C) 2009 Jesus Alvarez

;; Author: Jesus Alvarez <demizer.one@gmail.com> (https://github.com/jasonblewis/color-theme-wombat/blob/master/color-theme-wombat.el)
;; Author: Kristoffer Grönlund <krig@koru.se>
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
Adapted, with permission, from a Vim color scheme by Lars H. Nielsen.
Basic, Font Lock, Isearch, Gnus, Message, and Ansi-Color faces
 are included."
  :background-mode 'dark
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89)))
      ;; Variables with '/' correspond to the ANSI spots, *not* the actual
      ;; colors they contain.  Unless noted or commented out, they are the
      ;; original Wombat colors.  (That might not be true anymore.)

      ;; -x are darker, +x are lighter.
      (wombat-red-2    "#663636")
      (wombat-red-1    "#b85149")
      (wombat/red      "#e5786d")
      (wombat-orange-1 "#f57900")
      (wombat-orange   "#e65c00")
      (wombat-orange+1 "#e9b96e")
      (wombat-orange+2 "#ffc125")
      (wombat-green-1  "#4bc98a")
      (wombat/green    "#95e454")
      (wombat-yellow-1 "#cae682")
      (wombat/yellow   "#e7e784")
      (wombat-blue-3   "#006689")
      (wombat-blue-2   "#5b98c2")
      (wombat-blue-1   "#64a8d8")
      (wombat/blue     "#8ac6f2")
      (wombat/cyan     "#00b7eb")
      (wombat-cyan+1   "#70cecc")
      (wombat/magenta  "#333366")
      (wombat-purple-1 "#cc99cc")
      (wombat-purple   "#663399")
      (wombat-pink-1   "#f283b6")
      (wombat-pink     "#f6b3df")
      (wombat/white    "#f6f3e8")
      (wombat-white+1  "#ffffff")

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
   `(cursor ((,class (:background ,wombat-blue-2)))) ;; ,wombat-gray; background: #656565 -> #5b98c2

   ;;; Highlighting faces
   `(fringe ((,class (:background ,wombat-gray-5))))
   `(highlight ((,class (:background ,wombat-gray-1 :foreground ,wombat-white+1
                                     :underline t))))
   `(region ((,class (:background ,wombat-gray-2 :foreground ,wombat/white))))
   `(secondary-selection ((,class (:background ,wombat-blue-1 :foreground ,wombat/white :bold t))))
   `(isearch ((,class (:background ,wombat-purple-1 :foreground ,wombat/white))))
   `(isearch-fail ((,class (:background ,wombat-red-1))))
   `(lazy-highlight ((,class (:italic t :background ,wombat-purple :foreground ,wombat-gray+2))))
   ;; `(lazy-highlight-face ((,class (:foreground ,wombat-blue-3 :background ,wombat-orange+1))))

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
   `(escape-glyph ((,class (:foreground ,wombat-orange :weight bold))))
   `(homoglyph ((,class (:foreground ,wombat-orange :weight bold))))

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

   ;;; Parens
   `(show-paren-match ((,class (:background ,wombat/green :foreground ,wombat/white :bold t))))
   `(show-paren-mismatch ((,class (:background ,wombat-pink :foreground ,wombat/black :bold t))))

   ;;; LaTeX
   `(font-latex-bold-face ((,class (:foreground ,wombat-green-1))))
   `(font-latex-italic-face ((,class (:inherit italic :foreground ,wombat-green-1))))
   `(font-latex-math-face ((,class (:inherit font-lock-builtin-face))))
   `(font-latex-sectioning-5-face ((,class (:inherit variable-pitch :foreground ,wombat-blue-3 :weight bold))))
   `(font-latex-string-face ((,class (:inherit font-lock-string-face))))
   `(font-latex-subscript-face ((,class (:height 0.9))))
   `(font-latex-superscript-face ((,class (:height 0.9))))
   `(font-latex-verbatim-face ((,class (:inherit fixed-pitch :foreground "#91a5c1")))) ;; LightSteelBlue3
   `(font-latex-warning-face ((,class (:inherit font-lock-warning-face))))

   ;;; ANSI colors
   `(ansi-color-black ((,class (:background ,wombat/black :foreground ,wombat/black))))
   `(ansi-color-red ((,class (:background ,wombat-red-1 :foreground ,wombat-red-1))))
   `(ansi-color-green ((,class (:background ,wombat-green-1 :foreground ,wombat-green-1))))
   `(ansi-color-yellow ((,class (:background ,wombat-yellow-1 :foreground ,wombat-yellow-1))))
   `(ansi-color-blue ((,class (:background ,wombat-blue-2 :foreground ,wombat-blue-2))))
   `(ansi-color-magenta ((,class (:background ,wombat-purple :foreground ,wombat-purple))))
   `(ansi-color-cyan ((,class (:background ,wombat/cyan :foreground ,wombat/cyan))))
   `(ansi-color-white ((,class (:background ,wombat/white :foreground ,wombat/white))))
   `(ansi-color-bright-black ((,class (:background ,wombat-gray-2 :foreground ,wombat-gray-2))))
   `(ansi-color-bright-red ((,class (:background ,wombat/red :foreground ,wombat/red))))
   `(ansi-color-bright-green ((,class (:background ,wombat/green :foreground ,wombat/green))))
   `(ansi-color-bright-yellow ((,class (:background ,wombat/yellow :foreground ,wombat/yellow))))
   `(ansi-color-bright-blue ((,class (:background ,wombat/blue :foreground ,wombat/blue))))
   `(ansi-color-bright-magenta ((,class (:background ,wombat-pink :foreground ,wombat-pink))))
   `(ansi-color-bright-cyan ((,class (:background ,wombat-cyan+1 :foreground ,wombat-cyan+1))))
   `(ansi-color-bright-white ((,class (:background ,wombat-white+1 :foreground ,wombat-white+1))))

   ;;; diff-mode
   `(diff-removed ((,class (:inherit diff-changed :extend t :background ,wombat-red-2))))
   `(diff-added ((,class (:inherit diff-changed :extend t :background ,wombat-blue-3))))
   `(diff-indicator-removed ((,class (:inherit diff-removed :foreground ,wombat-pink))))
   `(diff-indicator-added ((,class (:inherit diff-added :foreground ,wombat/yellow))))
   `(diff-refine-removed ((,class (:inherit diff-refine-changed :background ,wombat-red-1))))
   `(diff-refine-added ((,class (:inherit diff-refine-changed :background ,wombat-blue-2))))

   ;;; smerge-mode
   `(smerge-lower ((,class (:extend t :background ,wombat-blue-3))))
   `(smerge-upper ((,class (:extend t :background ,wombat-red-2))))
   `(smerge-refined-removed ((,class (:inherit smerge-refine-changed :background ,wombat-red-1))))
   `(smerge-refined-added ((,class (:inherit smerge-refine-changed :background ,wombat-blue-2))))

   ;;; magit-diff-mode
   `(magit-diff-added ((,class (:extend t :background ,wombat-blue-3))))
   `(magit-diff-removed ((,class (:extend t :background ,wombat-red-2))))
   ;; Not exactly the same as for {diff,smerge}-mode, but "interesting" for
   ;; marking the active hunk.
   `(magit-diff-added-highlight ((,class (:extend t :background ,wombat-blue-2))))
   `(magit-diff-removed-highlight ((,class (:extend t :background ,wombat-red-1))))
   `(magit-diffstat-added ((,class (:foreground ,wombat/yellow))))
   `(magit-diffstat-removed ((,class (:foreground ,wombat-pink))))
   ))

(provide-theme 'wombat2)

;;; wombat2-theme.el ends here

;; https://github.com/alacritty/alacritty/wiki/Color-schemes
;; # Colors (Wombat)
;; colors:
;;   # Default colors
;;   primary:
;;     background: '#1f1f1f'
;;     foreground: '#e5e1d8'

;;   # Normal colors
;;   normal:
;;     black:   '#000000'
;;     red:     '#f7786d'
;;     green:   '#bde97c'
;;     yellow:  '#efdfac'
;;     blue:    '#6ebaf8'
;;     magenta: '#ef88ff'
;;     cyan:    '#90fdf8'
;;     white:   '#e5e1d8'

;;   # Bright colors
;;   bright:
;;     black:   '#b4b4b4'
;;     red:     '#f99f92'
;;     green:   '#e3f7a1'
;;     yellow:  '#f2e9bf'
;;     blue:    '#b3d2ff'
;;     magenta: '#e5bdff'
;;     cyan:    '#c2fefa'
;;     white:   '#ffffff'
