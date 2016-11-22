;;; solarized-light-theme.el --- Custom face theme for Emacs

;; Copyright © 2011 Gwenhael Le Moine <gwenhael.le.moine@gmail.com>

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(deftheme solarized
  "based on http://ethanschoonover.com/solarized")

(let* ((base3  "#002b36")
       (base2  "#073642")
       (base1  "#586e75")
       (base0  "#657b83")
       (base00   "#839496")
       (base01   "#93a1a1")
       (base02   "#eee8d5")
       (base03   "#fdf6e3")
       (yellow  "#b58900")
       (orange  "#cb4b16")
       (red     "#dc322f")
       (magenta "#d33682")
       (violet  "#6c71c4")
       (blue    "#268bd2")
       (cyan    "#2aa198")
       (green   "#859900"))
  (custom-theme-set-faces
   'solarized
   `(default ((t (:background ,base3 :foreground ,base03))))
   `(cursor ((t (:background ,base1 :foreground ,base02))))
   `(region ((t (:background ,base2 :foreground ,base01))))
   `(mode-line ((t (:background ,base2 :foreground ,base01))))
   `(mode-line-inactive ((t (:background ,base1 :foreground ,base01))))
   `(fringe ((t (:background ,base2))))
   `(minibuffer-prompt ((t (:background ,base3 :foreground ,blue :weight bold))))
   `(font-lock-builtin-face ((t (:foreground ,green))))
   `(font-lock-comment-face ((t (:slant italic :foreground ,base1))))
   `(font-lock-constant-face ((t (:foreground ,cyan))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:foreground ,green))))
   `(font-lock-string-face ((t (:foreground ,cyan))))
   `(font-lock-type-face ((t (:foreground ,yellow))))
   `(font-lock-variable-name-face ((t (:foreground ,blue))))
   `(font-lock-warning-face ((t (:foreground ,red :weight bold))))
   `(isearch ((t (:background ,base2 :foreground ,base01))))
   `(lazy-highlight ((t (:background ,base2 :foreground ,base00))))
   `(link ((t (:foreground ,violet :underline t))))
   `(link-visited ((t (:foreground ,magenta :underline t))))
   `(button ((t (:background ,base1 :underline t))))
   `(header-line ((t (:background ,base2 :foreground ,base01))))))

(provide-theme 'solarized)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; solarized-theme.el  ends here
