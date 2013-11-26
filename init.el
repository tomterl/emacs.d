;;; init.el --- Where all the magic begins
;;
;; 
;;

;; load Org-mode and gnus from source 

(setq tom/--emacs-dir (expand-file-name "~/.emacs.d")
      tom/--src-base (expand-file-name "~/.emacs.src.d"))

(setq tom/--org-home (expand-file-name "org-mode" tom/--src-base))

(let ((org-lisp-dir (expand-file-name "lisp" tom/--org-home)))
  (when (file-directory-p org-lisp-dir)
    (add-to-list 'load-path org-lisp-dir)
    (require 'org)))


;; load my own customizations 
(org-babel-load-file (expand-file-name "personal.org" tom/--emacs-dir))


;;; init.el ends here
