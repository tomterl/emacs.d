;;; init.el --- Where all the magic begins
;; 
;;; Commentary:
;;
;;; Code:
;; load Org-mode and gnus from source.

;; Variables
(defvar tom/--emacs-dir (expand-file-name "~/.emacs.d")
  "Directory of the Emacs setup.")
(defvar tom/--src-base (expand-file-name "~/.emacs.src.d")
  "Location of local repositories.")
(defvar tom/--org-base (expand-file-name "org-mode" tom/--src-base)
  "Location of `org-mode'.")

(let ((org-lisp-dir (expand-file-name "lisp" tom/--org-base)))
  (when (file-directory-p org-lisp-dir)
    (add-to-list 'load-path org-lisp-dir)
    (require 'org)
    ;; Load my own customizations.
    (org-babel-load-file (expand-file-name "personal.org" tom/--emacs-dir))))

;;; init.el ends here
