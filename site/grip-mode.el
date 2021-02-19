;;; grip-mode.el --- Instant Github-flavored Markdown preview using grip.        -*- lexical-binding: t; -*-

;; Copyright (C) 2019 Vincent Zhang

;; Author: Vincent Zhang <seagle0128@gmail.com>
;; Homepage: https://github.com/seagle0128/doom-modeline
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.4"))
;; Keywords: convenience, markdown, preview

;; This file is not part of GNU Emacs.

;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;

;;; Commentary:

;; Instant Github-flavored Markdown preview using a grip subprocess.
;;
;; Install:
;; From melpa, `M-x package-install RET grip-mode RET`.
;; ;; Make a keybinding: `C-c C-c g'
;; (define-key markdown-mode-command-map (kbd "g") #'grip-mode)
;; ;; or start grip when opening a markdown file
;; (add-hook 'markdown-mode-hook #'grip-mode)
;; or
;; (use-package grip-mode
;;   :ensure t
;;   :bind (:map markdown-mode-command-map
;;          ("g" . grip-mode)))
;; Run `M-x grip-mode` to preview the markdown file with the default browser.

;;; Code:

(defgroup grip nil
  "Instant Github-flavored Markdown preview using grip."
  :prefix "grip-"
  :group 'markdown)

(defcustom grip-mode-binary-path (executable-find "grip")
  "Path to the grip binary."
  :type 'string
  :group 'grip)



(defvar-local grip-process nil
  "Handle to the inferior grip process.")

(defvar-local grip-port 1088
  "Port to the grip port.")

(defun grip-mode-start-grip-process ()
  "Render and preview with grip."
  (unless grip-process
    ;; Generat random port
    (while (< grip-port 3000)
      (setq grip-port (random 65535)))

    ;; Start a new grip process
    (setq grip-process
          (start-process (format "grip-%d" grip-port)
                         (format " *grip-%d*" grip-port)
                         grip-mode-binary-path
                         buffer-file-name
                         (number-to-string grip-port)))
    ;; Wait for process start
    (sleep-for 1))

  ;; Open the default browser to preview
  (browse-url (format "http://localhost:%d/%s"
                      grip-port
                      (file-name-nondirectory buffer-file-name))))

(defun grip-mode-kill-grip-process ()
  "Kill the grip process."
  (when grip-process
    (delete-process grip-process)
    (message "Process `%s' killed" grip-process)
    (setq grip-process nil)
    (setq grip-port 1088)))

;;;###autoload
(define-minor-mode grip-mode
  "Live Markdown preview with grip."
  :lighter " grip"
  (if grip-mode
      (if grip-mode-binary-path
          (grip-mode-start-grip-process)
        (user-error "You need to have `grip' installed in PATH environment"))
    (grip-mode-kill-grip-process)))

(provide 'grip-mode)

;;; grip-mode.el ends here
