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

;; Code
(require 'cl-lib)
(let ((org-lisp-dir (expand-file-name "lisp" tom/--org-base)))
  (cl-flet ((age (file)
                 (float-time
                  (time-subtract (current-time)
                                 (nth 5 (or (file-attributes (file-truename file))
                                            (file-attributes file)))))))
    (when (file-directory-p org-lisp-dir)
      (add-to-list 'load-path org-lisp-dir)
      (require 'org)
      ;; Load my own customizations.
      (let ((org-file (expand-file-name "personal.org" tom/--emacs-dir))
            (el-file (expand-file-name "personal.el" tom/--emacs-dir))
            (elc-file (expand-file-name "personal.elc" tom/--emacs-dir)))
        (when (not (and (file-exists-p el-file)
                        (> (age org-file) (age el-file))))
          (org-babel-tangle-file org-file el-file "emacs-lisp")
          (byte-compile-file el-file t))
        (load-file elc-file)))))

;;; init.el ends here
