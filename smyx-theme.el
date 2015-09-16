;;;; smyx-theme.el --- smyx Color Theme

;; Copyright 2012-2014, Uriel G Maldonado

;; Author: Uriel G Maldonado <uriel781@gmail.com>
;; Keywords: color theme smyx
;; Version: 0.10

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;

;;;; Commentary:
;; This theme is based on smyck created by hukl.
;; (https://github.com/hukl/Smyck-Color-Scheme)
;; The cyberpunk theme was used as a starting point for smyx which was
;; created by Nicholas M. Van Horn.

;; This theme is a port of the overtone/emacs-live theme of the same name
;; (https://github.com/overtone/emacs-live). The original theme was
;; designed for use with the color-theme package. This theme adopts the
;; new built-in theme support deftheme. Additionally, this
;; theme strives to offer as many mode-specific customizations as
;; possible, with further tweaks that suit my fancy.

;;;; Code:

(deftheme smyx "The smyx color theme")

(let* ((class '((class color) (min-colors 89)))

       ;; smyx palette from http://color.smyck.org
       (smyck-black+0         "#000000")
       (smyck-gray-1          "#282828") ; bg of http://color.smyck.org
       (smyx-bg               smyck-gray-1)
       (smyck-gray+0          "#5d5d5d")
       (smyck-red+0           "#c75646")
       (smyck-red+1           "#e09690")
       (smyck-green+0         "#8eb33b")
       (smyck-green+1         "#cdee69")
       (smyck-yellow+0        "#d0b03c")
       (smyck-yellow+1        "#ffe377")
       (smyck-blue+0          "#72b3cc")
       (smyck-blue+1          "#9cd9f0")
       (smyck-purple+0        "#c8a0d1")
       (smyck-purple+1        "#fbb1f9")
       (smyck-turquoise+0     "#218693")
       (smyck-turquoise+1     "#77dfd8")
       (smyck-gray+1          "#b0b0b0")
       (smyck-white+0         "#f7f7f7")
       (smyx-fg               smyck-white+0)

       ;; smyx palette

       (smyx-black+1          "#1a1a1a")
       (smyx-bg-1             "#202020")
       (smyx-gray-8           "#262626")
       (smyx-bg+1             "#383838")
       (smyx-black-2          "#353535")
       (smyx-gray-5           "#333333")
       (smyx-bg+2             "#484848")
       (smyx-gray-2           "#8b8989")
       (smyx-gray-9           "#8f8f8f")
       (smyx-gray-3           "#919191")
       (smyx-gray-4           "#999999")

       (smyx-red+1            "#992222")
       (smyx-red-1            "#fab1ab")

       (smyx-yellow           "#f6dc69")
       (smyx-yellow-1         "#fbde2d")
       (smyx-yellow-2         "#d0bf8f")

       (smyx-green+2          "#9fc59f")
       (smyx-green+3          "#afd8af")
       )

  (custom-theme-set-faces
   'smyx
   '(button ((t (:underline t))))
   `(link ((,class (:foreground ,smyx-yellow :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,smyx-yellow-2 :underline t :weight normal))))
   `(blue ((,class (:foreground ,smyck-blue+1))))
   `(bold ((,class (:bold t))))
   `(bold-italic ((,class (:bold t))))
   `(border-glyph ((,class (nil))))
   `(buffers-tab ((,class (:background ,smyx-black-2 :foreground ,smyck-white+0))))

;;; basic coloring
   `(default ((,class (:foreground ,smyx-fg :background ,smyx-bg))))
   `(cursor ((,class (:background ,smyx-fg))))
   `(escape-glyph-face ((,class (:foreground ,smyck-red+0))))
   `(fringe ((,class (:foreground ,smyx-fg :background ,smyx-bg))))
   `(header-line ((,class (:foreground ,smyx-yellow
                           :background ,smyx-bg-1
                           :box (:line-width -1 :style released-button)))))

   `(region ((,class (:background ,smyx-bg+2))))
   `(highlight ((,class (:background ,smyx-bg+2))))
   `(match ((,class (:foreground ,smyck-red+0 :weight bold))))

;;; highlight current line
   `(hl-line ((,class (:background ,smyx-bg+2))))

;;; stripe-buffer
   `(stripe-highlight ((,class (:background ,smyx-bg-1))))

;;; compilation
   `(compilation-column-face ((,class (:foreground ,smyck-blue+1))))
   `(compilation-enter-directory-face ((,class (:foreground ,smyck-blue+1))))
   `(compilation-error-face ((,class (:foreground ,smyck-red+0 ,:weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,smyx-fg))))
   `(compilation-info-face ((,class (:foreground ,smyck-blue+1))))
   `(compilation-info ((,class (:foreground ,smyck-blue+1 :underline nil))))
   `(compilation-leave-directory-face ((,class (:foreground ,smyck-blue+1))))
   `(compilation-line-face ((,class (:foreground ,smyck-green+1))))
   `(compilation-line-number ((,class (:foreground ,smyx-yellow))))
   `(compilation-message-face ((,class (:foreground ,smyck-blue+1))))
   `(compilation-warning-face ((,class (:foreground ,smyx-yellow :weight bold :underline t))))

;;; grep
   `(grep-context-face ((,class (:foreground ,smyck-gray-1 :background ,smyck-purple+1))))
   `(grep-error-face ((,class (:foreground ,smyck-red+0 :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,smyck-gray-1 :background ,smyck-red+0))))
   `(grep-match-face ((,class (:foreground ,smyck-gray-1 :background ,smyck-purple+1))))

;;; multiple-cursors
   `(mc/cursor-face ((,class (:inverse-video nil, :background ,smyck-purple+1 :foreground ,smyck-gray-1))))

;;; isearch
   `(isearch ((,class (:weight bold :foreground nil :background ,smyck-green+0))))
   `(lazy-highlight ((,class (:foreground ,smyck-black+0 :background ,smyck-yellow+1))))
   `(isearch-fail ((,class (:foreground ,smyck-gray-1 :background ,smyck-red+1))))
   `(query-replace ((,class (:weight bold :foreground nil :background ,smyck-blue+1))))
   `(Highline-face ((,class (:background ,smyck-green+1))))
   `(italic ((,class (nil))))
   `(left-margin ((,class (nil))))
   `(toolbar ((,class (nil))))
   `(underline ((,class (:underline nil))))
   `(text-cursor ((,class (:background ,smyx-yellow :foreground ,smyck-gray-1))))
   `(menu ((,class (:foreground ,smyx-fg :background ,smyx-bg))))
   `(minibuffer-prompt ((,class (:foreground ,smyck-green+1 :background ,smyck-gray-1))))
   `(mode-line
     ((,class (:foreground ,smyck-blue+1 ;;; dominant
               :background ,smyx-black-2))))
   ;; `(mode-line-buffer-id ((,class (:foreground ,smyx-yellow :weight bold))))

   `(mode-line-inactive
     ((,class (:foreground ,smyx-bg+2
               :background ,smyx-black+1))))

   `(secondary-selection ((,class (:background ,smyx-bg+2))))
   `(trailing-whitespace ((,class (:background ,smyck-red+0))))
   `(vertical-border ((,class (:foreground ,smyx-gray-5 :background ,smyck-gray-1))))

;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,smyck-yellow+0))))
   `(font-lock-comment-face ((,class (:foreground ,smyx-gray-9 :italic t))))
   ;; `(font-lock-comment-delimiter-face ((,class (:foreground ,smyck-green+1))))
   `(font-lock-constant-face ((,class (:foreground ,smyck-red+1))))
   ;; `(font-lock-doc-face ((,class (:foreground ,smyx-green+0))))
   `(font-lock-doc-string-face ((,class (:foreground ,smyck-red+0))))
   `(font-lock-function-name-face ((,class (:foreground ,smyck-blue+1))))
   `(font-lock-keyword-face ((,class (:foreground ,smyck-green+1))))
   `(font-lock-negation-char-face ((,class (:foreground ,smyck-red+0))))
   `(font-lock-preprocessor-face ((,class (:foreground ,smyx-gray-3))))
   `(font-lock-string-face ((,class (:foreground ,smyck-red+0))))
   `(font-lock-type-face ((,class (:foreground ,smyck-blue+1))))

   `(font-lock-variable-name-face ((,class (:foreground ,smyck-blue+1))))
   `(font-lock-warning-face ((,class (:weight bold :foreground "red"))))
   `(font-lock-reference-face ((,class (:foreground ,smyck-gray+1))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,smyx-yellow))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,smyck-red+0))))


   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   `(gui-element ((,class (:background ,smyx-gray-5 :foreground ,smyck-blue+1))))

;;; anzu
   `(anzu-mode-line ((,class (:foreground ,smyck-blue+0 :weight bold))))

;;; newsticker
   ;; These are currently placeholders that probably look terrible.
   ;; Someone who uses newsticker is welcome to change these
   `(newsticker-date-face ((,class (:foreground ,smyx-fg))))
   `(newsticker-default-face ((,class (:foreground ,smyx-fg))))
   `(newsticker-enclosure-face ((,class (:foreground ,smyx-green+3))))
   `(newsticker-extra-face ((,class (:foreground ,smyx-bg+2 :height 0.8))))
   `(newsticker-feed-face ((,class (:foreground ,smyx-fg))))
   `(newsticker-immortal-item-face ((,class (:foreground ,smyck-green+1))))
   `(newsticker-new-item-face ((,class (:foreground ,smyck-blue+1))))
   `(newsticker-obsolete-item-face ((,class (:foreground ,smyck-red+0))))
   `(newsticker-old-item-face ((,class (:foreground ,smyck-gray+0))))
   `(newsticker-statistics-face ((,class (:foreground ,smyx-fg))))
   `(newsticker-treeview-face ((,class (:foreground ,smyx-fg))))
   `(newsticker-treeview-immortal-face ((,class (:foreground ,smyck-green+1))))
   `(newsticker-treeview-listwindow-face ((,class (:foreground ,smyx-fg))))
   `(newsticker-treeview-new-face ((,class (:foreground ,smyck-blue+1 :weight bold))))
   `(newsticker-treeview-obsolete-face ((,class (:foreground ,smyck-red+0))))
   `(newsticker-treeview-old-face ((,class (:foreground ,smyck-gray+0))))
   `(newsticker-treeview-selection-face ((,class (:foreground ,smyx-yellow))))

;;; full-ack
   `(ack-separator ((,class (:foreground ,smyx-fg))))
   `(ack-file ((,class (:foreground ,smyck-blue+1))))
   `(ack-line ((,class (:foreground ,smyx-yellow))))
   `(ack-match ((,class (:foreground ,smyck-yellow+0 :background ,smyx-bg-1 :weigth bold))))

;;; auctex
   `(font-latex-bold ((,class (:inherit bold))))
   `(font-latex-warning ((,class (:inherit font-lock-warning))))
   `(font-latex-sedate ((,class (:foreground ,smyx-yellow :weight bold))))
   `(font-latex-string ((,class (:foreground ,smyck-green+1))))
   `(font-latex-title-4 ((,class (:inherit variable-pitch :weight bold))))
   `(font-latex-sectioning-0 ((,class (:foreground ,smyck-blue+1 :background ,smyck-gray-1 :scale 1.5))))
   `(font-latex-sectioning-1 ((,class (:foreground ,smyck-blue+1 :background ,smyck-gray-1 :scale 1.5))))

;;; auto-complete
   `(ac-completion-face ((,class (:background ,smyx-gray-4 :underline t))))
   `(ac-candidate-face ((,class (:background ,smyx-gray-5 :foreground ,smyck-white+0))))
   `(ac-selection-face ((,class (:background ,smyck-green+1 :foreground ,smyck-gray-1))))
   `(popup-tip-face ((,class (:background ,smyx-gray-5 :foreground ,smyck-white+0))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,smyx-bg+2))))
   `(popup-scroll-bar-background-face ((,class (:background ,smyx-gray-5))))
   `(popup-isearch-match ((,class (:background ,smyck-gray-1 :foreground ,smyck-purple+1))))
   `(window-number-face ((,class (:background ,smyx-black+1 :foreground ,smyck-green+1))))

;;; bm
   `(bm-fringe-face            ((,class (:foreground ,smyck-white+0))))
   `(bm-fringe-persistent-face ((,class (:foreground ,smyck-yellow+1))))

;;; company-mode
   `(company-tooltip ((,class (:background ,smyx-gray-5 :foreground ,smyck-white+0))))
   `(company-tooltip-common ((,class (:inherit company-tooltip :foreground ,smyck-green+1))))
   `(company-tooltip-common-selection ((,class (:inherit company-tooltip-selection :foreground ,smyx-bg+2))))
   `(company-tooltip-selection ((,class (:foreground ,smyck-gray-1 :background ,smyck-green+1))))
   `(company-tooltip-annotation ((,class (:foreground , smyx-bg+2 :background ,smyx-gray-5))))

   `(company-scrollbar-fg ((,class (:background ,smyx-bg+2))))
   `(company-scrollbar-bg ((,class (:background ,smyx-gray-3))))
   `(company-preview ((,class (:foreground ,smyx-gray-2 :background ,smyck-purple+1))))

;;; deft
   `(deft-title-face ((,class (:foreground ,smyck-red+0 :weight bold))))

;;; diff
   `(diff-added ((,class (:foreground ,smyck-green+1))))
   `(diff-changed ((,class (:foreground ,smyx-yellow))))
   `(diff-removed ((,class (:foreground ,smyck-red+0))))
   `(diff-header ((,class (:background ,smyx-bg+2))))
   `(diff-file-header ((,class (:background ,smyx-bg+2 :foreground ,smyx-fg :bold t))))

;;; ediff
   `(ediff-current-diff-Ancestor ((,class (:foreground ,smyx-fg :background ,smyck-purple+1))))
   `(ediff-current-diff-A ((,class (:foreground ,smyx-fg :background ,smyx-black+1))))
   `(ediff-current-diff-B ((,class (:foreground ,smyx-fg :background ,smyx-bg+1))))
   `(ediff-current-diff-C ((,class (:foreground ,smyx-fg :background ,smyx-bg+2))))
   `(ediff-even-diff-Ancestor ((,class (:foreground ,smyck-white+0 :background ,smyx-black+1))))
   `(ediff-even-diff-A ((,class (:foreground ,smyck-white+0 :background ,smyx-bg+1))))
   `(ediff-even-diff-B ((,class (:foreground ,smyck-white+0 :background ,smyx-bg+2))))
   `(ediff-even-diff-C ((,class (:foreground ,smyck-white+0 :background ,smyck-gray+0))))
   `(ediff-fine-diff-Ancestor ((,class (:foreground ,smyck-gray-1 :background ,smyck-purple+1))))
   `(ediff-fine-diff-A ((,class (:foreground ,smyck-gray-1 :background ,smyck-blue+1))))
   `(ediff-fine-diff-B ((,class (:foreground ,smyck-gray-1 :background ,smyck-blue+1))))
   `(ediff-fine-diff-C ((,class (:foreground ,smyck-gray-1 :background ,smyck-blue+1))))
   `(ediff-odd-diff-Ancestor ((,class (:foreground ,smyck-gray-1 :background ,smyx-gray-2))))
   `(ediff-odd-diff-A ((,class (:foreground ,smyck-gray-1 :background ,smyx-gray-3))))
   `(ediff-odd-diff-B ((,class (:foreground ,smyck-gray-1 :background ,smyx-gray-4))))
   `(ediff-odd-diff-C ((,class (:foreground ,smyck-gray-1 :background ,smyck-gray+1))))

;;; diff-hl
   `(diff-hl-insert ((,class (:foreground ,smyck-green+0 ))))
   `(diff-hl-delete ((,class (:foreground ,smyck-red+0))))
   `(diff-hl-change ((,class (:foreground ,smyck-turquoise+0 :background ,smyx-bg+1))))

;;; ert
   `(ert-test-result-expected ((,class (:foreground ,smyx-green+3 :background ,smyx-bg))))
   `(ert-test-result-unexpected ((,class (:foreground ,smyck-red+0 :background ,smyx-bg))))

;;; eshell
   `(eshell-prompt ((,class (:foreground ,smyx-yellow :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,smyx-red-1 :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,smyck-blue+0 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,smyx-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,smyx-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,smyx-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,smyck-blue+1 :weight bold))))

;;; flymake
   `(flymake-errline ((,class (:foreground ,smyck-red+0 :weight bold :underline t))))
   `(flymake-warnline ((,class (:foreground ,smyck-yellow+0 :weight bold :underline t))))

;;; flyspell
   `(flyspell-duplicate ((,class (:underline (:style wave :color ,smyx-yellow) :inherit nil))))
   `(flyspell-incorrect ((,class (:underline (:style wave :color ,smyck-red+0) :inherit nil))))

;;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,smyck-blue+1 :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,smyx-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,smyx-yellow))))
   `(erc-keyword-face ((,class (:foreground ,smyck-blue+1 :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,smyx-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,smyck-red+0 :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,smyck-green+1))))
   `(erc-pal-face ((,class (:foreground ,smyck-yellow+0 :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,smyck-yellow+0 :background ,smyx-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,smyck-green+1))))
   `(erc-underline-face ((t (:underline t))))

;;; gnus
   `(gnus-group-mail-1 ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2 ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3 ((,class (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4 ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5 ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6 ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1 ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2 ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3 ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4 ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5 ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6 ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((,class (:inherit message-header-other))))
   `(gnus-header-from ((,class (:inherit message-header-from))))
   `(gnus-header-name ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups ((,class (:inherit message-header-other))))
   `(gnus-header-subject ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled ((,class (:foreground ,smyck-yellow+0))))
   `(gnus-summary-high-ancient ((,class (:foreground ,smyck-blue+1))))
   `(gnus-summary-high-read ((,class (:foreground ,smyck-green+1 :weight bold))))
   `(gnus-summary-high-ticked ((,class (:foreground ,smyck-yellow+0 :weight bold))))
   `(gnus-summary-high-unread ((,class (:foreground ,smyx-fg :weight bold))))
   `(gnus-summary-low-ancient ((,class (:foreground ,smyck-blue+1))))
   `(gnus-summary-low-read ((t (:foreground ,smyck-green+1))))
   `(gnus-summary-low-ticked ((,class (:foreground ,smyck-yellow+0 :weight bold))))
   `(gnus-summary-low-unread ((,class (:foreground ,smyx-fg))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,smyck-blue+0))))
   `(gnus-summary-normal-read ((,class (:foreground ,smyck-green+1))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,smyck-yellow+0 :weight bold))))
   `(gnus-summary-normal-unread ((,class (:foreground ,smyx-fg))))
   `(gnus-summary-selected ((,class (:foreground ,smyx-yellow :weight bold))))
   `(gnus-cite-1 ((,class (:foreground ,smyx-yellow-2))))
   `(gnus-cite-10 ((,class (:foreground ,smyx-yellow-1))))
   `(gnus-cite-11 ((,class (:foreground ,smyx-yellow))))
   `(gnus-cite-2 ((,class (:foreground ,smyck-blue+0))))
   `(gnus-cite-3 ((,class (:foreground ,smyck-blue+1))))
   `(gnus-cite-4 ((,class (:foreground ,smyx-green+2))))
   `(gnus-cite-5 ((,class (:foreground ,smyck-green+1))))
   `(gnus-cite-6 ((,class (:foreground ,smyck-green+1))))
   `(gnus-cite-7 ((,class (:foreground ,smyck-red+0))))
   `(gnus-cite-8 ((,class (:foreground ,smyx-red-1))))
   `(gnus-cite-9 ((,class (:foreground ,smyck-red+0))))
   `(gnus-group-news-1-empty ((,class (:foreground ,smyx-yellow))))
   `(gnus-group-news-2-empty ((,class (:foreground ,smyx-green+3))))
   `(gnus-group-news-3-empty ((,class (:foreground ,smyck-green+1))))
   `(gnus-group-news-4-empty ((,class (:foreground ,smyck-blue+1))))
   `(gnus-group-news-5-empty ((,class (:foreground ,smyck-blue+1))))
   `(gnus-group-news-6-empty ((,class (:foreground ,smyx-bg+2))))
   `(gnus-group-news-low-empty ((,class (:foreground ,smyx-bg+2))))
   `(gnus-signature ((,class (:foreground ,smyx-yellow))))
   `(gnus-x ((,class (:background ,smyx-fg :foreground ,smyx-bg))))

;;; helm
   `(helm-header
     ((,class (:foreground ,smyck-green+1
               :background ,smyx-bg
               :underline nil
               :box nil))))
   `(helm-source-header
     ((,class (:foreground ,smyx-yellow
               :background ,smyx-bg-1
               :underline nil
               :weight bold
               :box (:line-width -1 :style released-button)))))
   `(helm-selection ((,class (:background ,smyx-bg+1 :underline nil))))
   `(helm-selection-line ((,class (:background ,smyx-bg+1))))
   `(helm-visible-mark ((,class (:foreground ,smyx-bg :background ,smyx-yellow-2))))
   `(helm-candidate-number ((,class (:foreground ,smyx-green+3 :background ,smyx-bg-1))))

;;; hl-line-mode
   `(hl-sexp-face ((,class (:background ,smyx-gray-5))))
   `(hl-line-face ((,class (:background ,smyx-gray-5))))

;;; Info-mode
   `(Info-quoted ((,class (:foreground ,smyck-gray+1))))

;;; ido-mode
   `(ido-first-match ((,class (:foreground ,smyck-blue+1 :background ,smyck-gray-1))))
   `(ido-only-match ((,class (:foreground ,smyck-blue+1 :background ,smyck-gray-1))))
   `(ido-subdir ((,class (:foreground ,smyx-gray-4 :background ,smyck-gray-1))))
   `(ido-indicator ((,class (:foreground ,smyx-bg :background ,smyck-purple+1))))

;;; js2-mode
   `(js2-warning-face ((,class (:underline ,smyck-blue+1))))
   `(js2-error-face ((,class (:foreground ,smyck-red+0 :weight bold))))
   `(js2-jsdoc-tag-face ((,class (:foreground ,smyck-green+1))))
   `(js2-jsdoc-type-face ((,class (:foreground ,smyck-green+1))))
   `(js2-jsdoc-value-face ((,class (:foreground ,smyck-green+1))))

   `(js2-function-param-face ((,class (:foreground, smyck-blue+1))))
   `(js2-external-variable ((,class (:foreground , smyck-blue+1))))
   `(js2-function-param ((,class (:foreground, smyx-yellow))))

;;; jabber-mode
   `(jabber-roster-user-away ((,class (:foreground ,smyx-green+2))))
   `(jabber-roster-user-online ((,class (:foreground ,smyck-blue+0))))
   `(jabber-roster-user-dnd ((,class (:foreground ,smyx-red+1))))
   `(jabber-rare-time-face ((,class (:foreground ,smyck-green+1))))
   `(jabber-chat-prompt-local ((,class (:foreground ,smyck-blue+0))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,smyx-red+1))))
   `(jabber-activity-face((,class (:foreground ,smyx-red+1))))
   `(jabber-activity-personal-face ((,class (:foreground ,smyck-blue+0))))
   `(jabber-title-small ((,class (:height 1.1 :weight bold))))
   `(jabber-title-medium ((,class (:height 1.2 :weight bold))))
   `(jabber-title-large ((,class (:height 1.3 :weight bold))))

;;; linum-mode
   `(linum ((,class (:height 0.9 :foreground ,smyx-gray-9 :background ,smyx-bg))))

;;; easy-escape-mode
   `(easy-escape-face ((,class (:height 1.0 :weight bold :background ,smyx-bg-1))))

;;; magit
   `(magit-section-title ((,class (:foreground ,smyck-green+1))))
   `(magit-branch ((,class (:foreground ,smyck-blue+1))))
   `(magit-item-highlight ((,class (:background ,smyck-gray+0))))
   `(magit-log-sha1 ((,class (:foreground ,smyck-blue+1))))
   `(magit-log-author ((,class (:foreground ,smyck-green+1))))
   `(magit-log-head-label-default ((,class (:background ,smyx-bg :foreground ,smyck-green+1))))
   `(magit-log-head-label-head ((,class (:background ,smyx-bg :foreground ,smyck-green+1))))
   `(magit-log-head-label-remote  ((,class (:background ,smyx-bg :foreground ,smyx-yellow))))
   `(magit-log-head-label-tags    ((,class (:background ,smyx-bg :foreground ,smyx-yellow))))
   `(magit-log-head-label-local    ((,class (:background ,smyx-bg :foreground ,smyck-blue+1))))


   `(magit-diff-add ((,class (:foreground ,smyck-green+1))))
   `(magit-diff-del ((,class (:foreground ,smyck-red+0))))
   `(magit-diff-hunk-header ((,class (:foreground ,smyx-yellow))))

   `(eval-sexp-fu-flash ((,class (:background ,smyx-gray-8 :foreground ,smyck-purple+1))))

;;; message-mode
   `(message-cited-text ((,class (:inherit font-lock-comment))))
   `(message-header-name ((,class (:foreground ,smyck-blue+1))))
   `(message-header-other ((,class (:foreground ,smyck-green+1))))
   `(message-header-to ((,class (:foreground ,smyck-purple+1 :weight bold))))
   `(message-header-from ((,class (:foreground ,smyx-yellow :weight bold))))
   `(message-header-cc ((,class (:foreground ,smyx-yellow :weight bold))))
   `(message-header-newsgroups ((,class (:foreground ,smyx-yellow :weight bold))))
   `(message-header-subject ((,class (:foreground ,smyck-yellow+0 :weight bold))))
   `(message-header-xheader ((,class (:foreground ,smyck-green+1))))
   `(message-mml ((,class (:foreground ,smyx-yellow :weight bold))))
   `(message-separator ((,class (:inherit font-lock-comment))))

;;; mew
   `(mew-face-header-subject ((,class (:foreground ,smyck-yellow+0))))
   `(mew-face-header-from ((,class (:foreground ,smyx-yellow))))
   `(mew-face-header-date ((,class (:foreground ,smyck-green+1))))
   `(mew-face-header-to ((,class (:foreground ,smyck-red+0))))
   `(mew-face-header-key ((,class (:foreground ,smyck-green+1))))
   `(mew-face-header-private ((,class (:foreground ,smyck-green+1))))
   `(mew-face-header-important ((,class (:foreground ,smyck-blue+1))))
   `(mew-face-header-marginal ((,class (:foreground ,smyx-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,smyck-red+0))))
   `(mew-face-header-xmew ((,class (:foreground ,smyck-green+1))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,smyck-red+0))))
   `(mew-face-body-url ((,class (:foreground ,smyck-yellow+0))))
   `(mew-face-body-comment ((,class (:foreground ,smyx-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,smyck-green+1))))
   `(mew-face-body-cite2 ((,class (:foreground ,smyck-blue+1))))
   `(mew-face-body-cite3 ((,class (:foreground ,smyck-yellow+0))))
   `(mew-face-body-cite4 ((,class (:foreground ,smyx-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,smyck-red+0))))
   `(mew-face-mark-review ((,class (:foreground ,smyck-blue+1))))
   `(mew-face-mark-escape ((,class (:foreground ,smyck-green+1))))
   `(mew-face-mark-delete ((,class (:foreground ,smyck-red+0))))
   `(mew-face-mark-unlink ((,class (:foreground ,smyx-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,smyck-green+1))))
   `(mew-face-mark-unread ((,class (:foreground ,smyck-red+0))))
   `(mew-face-eof-message ((,class (:foreground ,smyck-green+1))))
   `(mew-face-eof-part ((,class (:foreground ,smyx-yellow))))

;;; mic-paren
   `(paren-face-match ((,class (:foreground ,smyck-blue+1 :background ,smyx-bg :weight bold))))
   `(paren-face-mismatch ((,class (:foreground ,smyx-bg :background ,smyck-purple+1 :weight bold))))
   `(paren-face-no-match ((,class (:foreground ,smyx-bg :background ,smyck-red+0 :weight bold))))

;;; nav
   `(nav-face-heading ((,class (:foreground ,smyx-yellow))))
   `(nav-face-button-num ((,class (:foreground ,smyck-blue+1))))
   `(nav-face-dir ((,class (:foreground ,smyck-green+1))))
   `(nav-face-hdir ((,class (:foreground ,smyck-red+0))))
   `(nav-face-file ((,class (:foreground ,smyx-fg))))
   `(nav-face-hfile ((,class (:foreground ,smyck-red+1))))

;;; mumamo
   `(mumamo-background-chunk-major ((,class (:background ,smyck-gray-1))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,smyck-gray-1))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,smyx-bg+2))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,smyck-gray+0))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,smyx-bg+1))))

;;; org-mode
   `(org-warning ((,class (:foreground ,smyck-red+0 :weight bold))))

   `(org-document-title ((,class (:foreground ,smyck-blue+1 :background ,smyck-gray-1 :weight bold ))))
   `(org-document-info ((,class (:foreground ,smyck-green+1 :background ,smyck-gray-1 :weight bold))))
   `(org-document-info-keyword ((,class (:foreground ,smyx-gray-2 :background ,smyck-gray-1))))
   `(org-agenda-date-today
     ((,class (:foreground ,smyx-yellow :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:slant italic))))
   `(org-checkbox ((,class (:background ,smyx-gray-2 :foreground ,smyck-white+0
                            :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,smyck-green+1))))
   `(org-done ((,class (:foreground ,smyck-green+0 :weight bold
                        :box (:line-width 1 :style none)))))
   `(org-todo ((,class (:foreground ,smyck-red+0 :weight bold))))

   `(org-level-1 ((,class (:foreground ,smyck-blue+1 :weight bold))))
   `(org-level-2 ((,class (:foreground ,smyck-green+1))))
   `(org-level-3 ((,class (:foreground ,smyck-red+1))))
   `(org-level-4 ((,class (:foreground ,smyck-yellow+1))))
   `(org-level-5 ((,class (:foreground ,smyck-blue+0))))
   `(org-level-6 ((,class (:foreground ,smyck-green+0))))
   `(org-level-7 ((,class (:foreground ,smyck-red+0))))
   `(org-level-8 ((,class (:foreground ,smyck-yellow+0))))

   `(org-link ((,class (:foreground ,smyck-blue+0 :underline t))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-column ((,class (:background ,smyx-yellow :foreground ,smyck-gray-1))))
   `(org-column-title ((,class (:background ,smyx-bg-1 :weight bold))))
   `(org-block ((,class (:foreground ,smyx-fg :background ,smyx-black+1))))
   `(org-block-begin-line
     ((,class (:foreground "#008ED1" :background ,smyx-bg-1))))
   `(org-block-background ((,class (:background ,smyx-black+1))))
   `(org-block-end-line
     ((,class (:foreground "#008ED1" :background ,smyx-bg-1))))
   `(org-hide ((,class (:foreground ,smyx-bg)))) ;; hide leading stars
   `(org-headline-done ((,class (:foreground ,smyck-green+0))))

   ;; `(org-deadline-announce ((,class (:foreground ,smyx-red-1))))
   ;; `(org-scheduled ((,class (:foreground ,smyx-green+3))))
   ;; `(org-scheduled-previously ((,class (:foreground ,smyck-red+1))))
   ;; `(org-scheduled-today ((,class (:foreground ,smyck-blue+0))))
   ;; `(org-special-keyword ((,class (:foreground ,smyx-yellow-1))))
   ;; `(org-table ((,class (:foreground ,smyx-green+2))))
   ;; `(org-time-grid ((,class (:foreground ,smyck-yellow+0))))
   ;; `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   ;; `(org-formula ((,class (:foreground ,smyx-yellow-2))))

;;; outline
   `(outline-8 ((,class (:inherit default))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,smyx-red-1))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,smyck-green+0))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,smyck-purple+1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,smyx-yellow))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,smyck-green+1))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,smyck-blue+1))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,smyck-yellow+0))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,smyck-blue+1))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,smyck-gray+1))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,smyck-white+0))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,smyck-blue+0))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,smyck-red+1))))

;;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,smyck-green+1))))
   `(rpm-spec-doc-face ((,class (:foreground ,smyck-green+1))))
   `(rpm-spec-ghost-face ((,class (:foreground ,smyck-red+0))))
   `(rpm-spec-macro-face ((,class (:foreground ,smyx-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,smyck-red+0))))
   `(rpm-spec-package-face ((,class (:foreground ,smyck-red+0))))
   `(rpm-spec-section-face ((,class (:foreground ,smyx-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,smyck-blue+1))))
   `(rpm-spec-var-face ((,class (:foreground ,smyck-red+0))))

;;; rst-mode
   `(rst-level-1-face ((,class (:foreground ,smyck-yellow+0))))
   `(rst-level-2-face ((,class (:foreground ,smyck-green+1))))
   `(rst-level-3-face ((,class (:foreground ,smyck-blue+0))))
   `(rst-level-4-face ((,class (:foreground ,smyx-yellow-2))))
   `(rst-level-5-face ((,class (:foreground ,smyck-blue+1))))
   `(rst-level-6-face ((,class (:foreground ,smyck-green+0))))

;;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,smyck-red+1 :background ,smyck-gray-1))))
   `(show-paren-match ((,class (:foreground ,smyck-gray-1 :background ,smyck-purple+1))))

   `(naeu-green-face ((,class (:foreground ,smyck-green+1 :background ,smyck-gray-1))))
   `(naeu-pink-face ((,class (:foreground ,smyck-purple+1 :background ,smyck-gray-1))))
   `(naeu-blue-face ((,class (:foreground ,smyck-blue+0 :background ,smyck-gray-1))))
   `(naeu-orange-face ((,class (:foreground ,smyx-yellow-1 :background ,smyck-gray-1))))
   `(naeu-red-face ((,class (:foreground ,smyck-yellow+0 :background ,smyck-gray-1))))
   `(naeu-grey-face ((,class (:foreground ,smyx-bg+2 :background ,smyck-gray-1))))

;;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,smyck-red+0))))

;;; elscreen
   `(elscreen-tab-other-screen-face (
                                     (,class (:foreground ,smyck-gray+1 :background ,smyck-gray-1))))

   `(elscreen-tab-current-screen-face (
                                       (,class (:foreground ,smyx-gray-5 :background ,smyck-gray+1))))


;;; ansi-term
   `(term-color-black ((,class (:foreground ,smyx-bg
                                :background ,smyx-bg-1))))
   `(term-color-red ((,class (:foreground ,smyck-red+0
                              :background ,smyck-red+1))))
   `(term-color-green ((,class (:foreground ,smyck-green+1
                                :background ,smyx-green+2))))
   `(term-color-yellow ((,class (:foreground ,smyck-yellow+0
                                 :background ,smyx-yellow))))
   `(term-color-blue ((,class (:foreground ,smyck-blue+0
                               :background ,smyck-blue+1))))
   `(term-color-magenta ((,class (:foreground ,smyck-red+0
                                  :background ,smyck-red+1))))
   `(term-color-cyan ((,class (:foreground ,smyck-blue+1
                               :background ,smyck-blue+1))))
   `(term-color-white ((,class (:foreground ,smyx-fg
                                :background ,smyx-bg-1))))
   `(term-default-fg-color ((,class (:inherit term-color-white))))
   `(term-default-bg-color ((,class (:inherit term-color-black))))

;;; volatile-highlights
   `(vhl/default-face ((,class (:background ,smyx-gray-5))))

   `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,smyck-purple+1 :background ,smyck-gray-1))))

;;; whitespace-mode
   `(whitespace-space ((,class (:background ,smyx-bg :foreground ,smyx-bg+1))))
   `(whitespace-hspace ((,class (:background ,smyx-bg :foreground ,smyx-bg+1))))
   `(whitespace-tab ((,class (:background ,smyx-bg :foreground ,smyck-red+0))))
   `(whitespace-newline ((,class (:foreground ,smyx-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,smyck-red+0 :background ,smyx-bg))))
   `(whitespace-line ((,class (:background ,smyx-black+1 :foreground ,smyck-purple+0))))
   `(whitespace-space-before-tab ((,class (:background ,smyck-yellow+0 :foreground ,smyck-yellow+0))))
   `(whitespace-indentation ((,class (:background ,smyx-yellow :foreground ,smyck-red+0))))
   `(whitespace-empty ((,class (:background ,smyx-yellow :foreground ,smyck-red+0))))
   `(whitespace-space-after-tab ((,class (:background ,smyx-yellow :foreground ,smyck-red+0))))

;;; wanderlust
   `(wl-highlight-folder-few-face ((,class (:foreground ,smyck-red+0))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,smyx-red-1))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,smyck-yellow+0))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,smyck-blue+1))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,smyx-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,smyck-blue+1))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,smyx-red-1))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,smyck-red+0))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,smyx-green+2))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,smyck-blue+1))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,smyck-blue+0))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,smyck-green+1))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,smyx-red+1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,smyx-green+2))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,smyck-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,smyx-green+2))))
   `(wl-highlight-message-signature ((,class (:foreground ,smyck-green+1))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,smyx-fg))))
   `(wl-highlight-summary-answered-face ((,class (:foreground ,smyck-blue+1))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,smyx-fg
                                                  :slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,smyck-blue+1))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,smyx-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,smyx-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,smyck-red+0))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,smyx-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))

;;; which-func-mode
   `(which-func ((,class (:foreground ,smyck-green+1))))

;;; yasnippet
   `(yas/field-highlight-face ((,class (:background ,smyck-purple+1 :foreground ,smyck-gray-1))))

;;; enh-ruby-mode
   `(enh-ruby-op-face ((,class (:foreground ,smyck-yellow+0)))) ; || and +
   `(enh-ruby-heredoc-delimiter-face ((,class (:foreground ,smyck-blue+1))))
   `(enh-ruby-string-delimiter-face ((,class (:foreground ,smyck-green+1))))
   `(enh-ruby-regexp-delimiter-face ((,class (:color ,smyck-red+0))))
   `(erm-syn-errline ((,class (:color ,smyck-red+0))))
   `(erm-syn-warnline ((,class (:color ,smyck-red+0))))

;;; guide-key
   `(guide-key/highlight-command-face ((t (:foreground ,smyck-green+1))))
   `(guide-key/key-face ((t (:foreground ,smyck-white+0))))
   `(guide-key/prefix-command-face ((t (:foreground ,smyx-yellow))))

;;; yascroll
   `(yascroll:thumb-text-area ((,class (:background ,smyx-bg-1))))
   `(yascroll:thumb-fringe ((,class (:background ,smyx-bg-1 :foreground ,smyx-bg-1))))
   )

;;; custom theme variables
  (custom-theme-set-variables
   'smyx
   `(ansi-color-names-vector [,smyx-bg ,smyck-red+0 ,smyck-green+1 ,smyck-yellow+0
                                       ,smyck-blue+0 ,smyx-red+1 ,smyck-blue+1 ,smyx-fg])
   ;; fill-column-indicator
   `(fci-rule-color ,smyck-gray+0)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


(provide-theme 'smyx)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; eval: (when (featurep 'aggressive-indent) (aggressive-indent-mode -1))
;; End:

;;;; smyx-theme.el ends here.
