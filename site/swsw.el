;;; swsw.el --- Simple window switching -*- lexical-binding: t -*-

;; Copyright (C) 2020 Daniel Semyonov

;; Author: Daniel Semyonov <cmstr@dsemy.com>
;; Version: 1.0
;; Package-Requires: ((emacs "23.1"))
;; Keywords: convenience
;; URL: https://sr.ht/~dsemy/swsw

;; swsw is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; swsw is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
;; or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
;; License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; swsw (simple window switching) provides a minor mode for switching
;; windows using IDs assigned to them.
;; Customize `swsw-display-function' to change how window IDs are displayed.

;;; Code:

;;;; Customization:

(defgroup swsw nil
  "Simple window switching."
  :group 'convenience
  :prefix "swsw-")

(defcustom swsw-id-chars '(?a ?s ?d ?f ?g ?h ?j ?k ?l)
  "Base set of characters from which window IDs are constructed."
  :group 'swsw
  :type '(repeat character))

(defcustom swsw-minibuffer-id ?m
  "ID reserved for the minibuffer."
  :group 'swsw
  :type '(character))

(defcustom swsw-scope t
  "Scope of all window operations.
t means consider all windows on all existing frames.
0 (the number zero) means consider all windows on all visible and iconified
frames.
‘visible’ means consider all windows on all visible frames."
  :group 'swsw
  :type '(radio (const :tag "All windows on all frames" t)
                (const
                 :tag "All windows on all visible and iconified frames." 0)
                (const :tag "All windows on all visible frames" 'visible)))

(defun swsw--set-display-function (sym fun)
  "Call the previous display function with nil as the sole argument (turning
it off), set SYM's value to FUN, and call FUN with t as the sole argument."
  (unless (or (not (boundp 'swsw-display-function))
              (eq swsw-display-function 'lighter))
    (funcall swsw-display-function nil))
  (set-default sym fun)
  (unless (eq fun 'lighter)
    (funcall fun t)))

(defcustom swsw-display-function 'lighter
  "Function used to display the ID of each window.
This function is called with t as the sole argument when enabling `swsw-mode',
and with nil as the sole argument when disabling it.
If set to `lighter', use the mode line lighter of `swsw-mode'"
  :group 'swsw
  :type '(radio (const :tag "Mode line lighter" lighter)
                (function :tag "Display function"))
  :set #'swsw--set-display-function)

(defcustom swsw-id-format " <%s>"
  "Format string for the window ID.
%s is replaced with a representation of the window's ID."
  :group 'swsw
  :type '(string))

;;;; Simple window switching minor mode:

(defvar swsw-ids nil
  "IDs which can currently be assigned to windows.")

(defvar swsw-window-list nil
  "Alist of active active windows and their IDs.")

(defun swsw--get-possible-ids (&rest char-lists)
  "Return the Cartesian product of all CHAR-LISTS."
  (if char-lists
      (mapcan (lambda (inner)
                (mapcar (lambda (outer)
                          (cons outer inner))
                        (car char-lists)))
              (apply #'swsw--get-possible-ids (cdr char-lists)))
    (list nil)))

(defun swsw--get-id-length ()
  "Return the current length of a window ID."
  (let* ((windows (length (window-list-1 nil nil swsw-scope)))
         (chars (length swsw-id-chars))
         (div (/ windows chars)))
    ;; Check the remainder to returning a longer length than necessary.
    (if (= 0 (mod windows chars))
        div
      (1+ div))))

(defun swsw-update-window (window)
  "Update information for WINDOW."
  (let ((id (if (window-minibuffer-p window)
                swsw-minibuffer-id
              (pop swsw-ids))))
    (when id
      (push (cons id window) swsw-window-list)
      (set-window-parameter window 'swsw-id id))))

(defun swsw-update (&optional _frame)
  "Update information for all windows."
  (setq swsw-window-list nil
        ;; Build a list of all possible IDs for the current length.
        swsw-ids (let ((acc 0) (len (swsw--get-id-length)) char-lists)
                   (while (< acc len)
                     (push swsw-id-chars char-lists)
                     (setq acc (1+ acc)))
                   (apply #'swsw--get-possible-ids char-lists)))
  (walk-windows #'swsw-update-window nil swsw-scope))

(defun swsw-format-id (window)
  "Format an ID string for WINDOW."
  (format swsw-id-format
          (reverse (apply #'string (window-parameter window 'swsw-id)))))

;;;###autoload
(define-minor-mode swsw-mode
  "Minor mode for selecting windows by their ID."
  :global t
  :lighter (:eval (when (eq swsw-display-function 'lighter)
                    (swsw-format-id (selected-window))))
  :keymap (make-sparse-keymap)
  (if swsw-mode
      (progn
        (swsw-update)
        (unless (eq swsw-display-function 'lighter)
          (funcall swsw-display-function t))
        (add-hook 'window-configuration-change-hook #'swsw-update)
        (add-hook 'minibuffer-setup-hook #'swsw-update)
        (add-hook 'minibuffer-exit-hook #'swsw-update)
        (add-hook 'after-delete-frame-functions #'swsw-update))
    (unless (eq swsw-display-function 'lighter)
      (funcall swsw-display-function nil))
    (remove-hook 'window-configuration-change-hook #'swsw-update)
    (remove-hook 'minibuffer-setup-hook #'swsw-update)
    (remove-hook 'minibuffer-exit-hook #'swsw-update)
    (remove-hook 'after-delete-frame-functions #'swsw-update)))

(defun swsw--read-id (len)
  "Read a window ID of length LEN using `read-char'."
  (let ((acc 1) id)
    ;; Special case for the minibuffer.
    (if (eq (car (push (read-char) id)) swsw-minibuffer-id)
        id
      (while (< acc len)
        (push (read-char) id)
        (setq acc (1+ acc)))
      (list id))))

(defun swsw-select (&optional id)
  "Select window by its ID."
  ;; If there are less than 3 windows, don't get an ID.
  (interactive (unless (< (length swsw-window-list) 3)
                 (run-hooks 'swsw-before-select-hook)
                 (swsw--read-id (swsw--get-id-length))))
  (if id
      (let ((window (cdr (assoc id swsw-window-list))))
        (when window
          (select-window window)
          (run-hooks 'swsw-after-select-hook)))
    (other-window 1)))

;;;; Display functions:

(defun swsw--mode-line-display ()
  "Display window IDs at the beginning of the mode line."
  (setq-default mode-line-format
                `((swsw-mode
                   (:eval (swsw-format-id (selected-window))))
                  ,@(assq-delete-all
                     `swsw-mode
                     (default-value `mode-line-format))))
  (force-mode-line-update t))

(defun swsw--mode-line-hide ()
  "Remove window IDs from the beginning of the mode line."
  (setq-default mode-line-format
                (assq-delete-all
                 'swsw-mode
                 (default-value 'mode-line-format)))
  (force-mode-line-update t))

(defun swsw-mode-line-display-function (switch)
  "Display window IDs on the mode line if SWITCH is non-nil, and disable
displaying window IDs on the mode line if SWITCH is nil.

This display function shows the window IDs at the beginning of the mode line,
similarly to `ace-window-display-mode'.
This display function respects `swsw-id-format'."
  (if switch
      (swsw--mode-line-display)
    (swsw--mode-line-hide)))

(defun swsw-mode-line-conditional-display-function (switch)
  "Display window IDs on the mode line if SWITCH is non-nil and a window
selection is in progress, and disable displaying window IDs on the mode line
if SWITCH is nil.

This display function shows the window IDs at the beginning of the mode line,
similarly to `ace-window-display-mode'.
This display function respects `swsw-id-format'."
  (if switch
      (progn
        (add-hook 'swsw-before-select-hook #'swsw--mode-line-display)
        (add-hook 'swsw-after-select-hook #'swsw--mode-line-hide))
    (remove-hook 'swsw-before-select-hook #'swsw--mode-line-display)
    (remove-hook 'swsw-after-select-hook #'swsw--mode-line-hide)))

(provide 'swsw)

;; swsw.el ends here
