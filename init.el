;;; init.el --- Where all the magic begins
;;
;; 
;;

;; load Org-mode and gnus from source 

(setq tom/--emacs-dir "/home/tom/.emacs.d"
      tom/--src-base "/home/tom/.emacs.src.d")

(setq tom/--org-home (expand-file-name "org-mode" tom/--src-base)
      tom/--gnus-home (expand-file-name "gnus" tom/--src-base))

(let ((org-lisp-dir (expand-file-name "lisp" tom/--org-home)))
  (when (file-directory-p org-lisp-dir)
    (add-to-list 'load-path org-lisp-dir)
    (require 'org)))

(let ((lisp-dir (expand-file-name "lisp" tom/--gnus-home)))
  (when (file-directory-p lisp-dir)
    (add-to-list 'load-path lisp-dir)
    (require 'gnus-load)
    (require 'gnus-util)))

;; load my own customizations 
(org-babel-load-file (expand-file-name "tom.org" tom/--emacs-dir))


;;; init.el ends here
