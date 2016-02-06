;;; wombatmod-theme.el --- Custom face theme for Emacs  -*-coding: utf-8 -*-

;; Copyright (C) 2011-2015 Free Software Foundation, Inc.

;; Author: Kristoffer Grönlund <krig@koru.se>

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(deftheme wombatmod
  "Medium-contrast faces with a dark gray background (duplicate).
Adapted, with permission, from a Vim color scheme by Lars H. Nielsen.
Basic, Font Lock, Isearch, Gnus, Message, and Ansi-Color faces
are included.")

(let ((class '((class color) (min-colors 89)))

      ;; These have names corresponding to the ANSI spots, *not* the
      ;; actual colors they contain.
      (wombat/black "#242424")
      (wombat/red "#e5786d")
      (wombat/green "#95e454")
      (wombat/yellow "#cae682")
      (wombat/blue "#8ac6f2")
      (wombat/magenta "#333366")
      (wombat/cyan "#ccaa8f")
      (wombat/white "#f6f3e8")

      (wombat-gray+2 "#a0a8b0")
      (wombat-gray+1 "#99968b")
      (wombat-gray   "#656565")
      (wombat-gray-1 "#454545")
      (wombat-gray-2 "#444444")
      (wombat-gray-3 "#343434")
      (wombat-gray-4 "#333333")
      (wombat-gray-5 "#303030")
      )

  (custom-theme-set-faces
   'wombatmod
   `(default ((,class (:background ,wombat/black :foreground ,wombat/white))))
   `(cursor ((,class (:background ,wombat-gray))))
   ;; Highlighting faces
   `(fringe ((,class (:background ,wombat-gray-5))))
   `(highlight ((,class (:background ,wombat-gray-1 :foreground "#ffffff"
                                     :underline t))))
   `(region ((,class (:background ,wombat-gray-2 :foreground ,wombat/white))))
   `(secondary-selection ((,class (:background ,wombat/magenta :foreground ,wombat/white))))
   `(isearch ((,class (:background ,wombat-gray-3 :foreground "#857b6f"))))
   `(lazy-highlight ((,class (:background "#384048" :foreground ,wombat-gray+2))))
   ;; Mode line faces
   `(mode-line ((,class (:background ,wombat-gray-2 :foreground ,wombat/white))))
   `(mode-line-inactive ((,class (:background ,wombat-gray-2 :foreground "#857b6f"))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,wombat/red))))
   `(escape-glyph ((,class (:foreground "#ddaa6f" :weight bold))))
   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,wombat/red))))
   `(font-lock-comment-face ((,class (:foreground ,wombat-gray+1))))
   `(font-lock-constant-face ((,class (:foreground ,wombat/red))))
   `(font-lock-function-name-face ((,class (:foreground ,wombat/yellow))))
   `(font-lock-keyword-face ((,class (:foreground ,wombat/blue :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,wombat/green))))
   `(font-lock-type-face ((,class (:foreground "#92a65e" :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,wombat/yellow))))
   `(font-lock-warning-face ((,class (:foreground ,wombat/cyan))))
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
   `(message-separator ((,class (:foreground ,wombat/red :weight bold))))))

(custom-theme-set-variables
 'wombatmod
 '(ansi-color-names-vector [,wombat/black ,wombat/red ,wombat/green ,wombat/yellow
                            ,wombat/blue ,wombat/magenta ,wombat/cyan ,wombat/white]))

(provide-theme 'wombatmod)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; wombatmod-theme.el ends here
