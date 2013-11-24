;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;

;; load Org-mode from source when the ORG_HOME environment variable is set

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

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'graphene)

(org-babel-load-file (expand-file-name "tom.org" tom/--emacs-dir))


;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(graphene-autocomplete-auto nil)
 '(graphene-default-font "-adobe-Source Code Pro-normal-normal-normal-*-11-*-*-*-m-0-iso10646-1")
 '(graphene-fixed-pitch-font "-adobe-Source Code Pro-normal-normal-normal-*-11-*-*-*-m-0-iso10646-1")
 '(safe-local-variable-values (quote ((eval when (and (buffer-file-name) (file-regular-p (buffer-file-name)) (string-match-p "^[^.]" (buffer-file-name))) (emacs-lisp-mode) (when (fboundp (quote flycheck-mode)) (flycheck-mode -1)) (unless (featurep (quote package-build)) (let ((load-path (cons ".." load-path))) (require (quote package-build)))) (package-build-minor-mode))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
