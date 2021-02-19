;;; init.el --- Where all the magic begins
;; 
;;; Commentary:
;;
;;; Code:
;; will be called from personal.org 
                                        ;(package-initialize)

;; load Org-mode and gnus from source.

;; Variables
(setq comp-deferred-compilation t)
(setq auto-save-list-file-prefix nil)
(defvar tom/--emacs-dir (expand-file-name "~/.emacs.d")
  "Directory of the Emacs setup.")
(defvar tom/--src-base (expand-file-name "~/.emacs.src.d")
  "Location of local repositories.")
;(defvar tom/--org-base (expand-file-name "org-mode" tom/--src-base)
;  "Location of `org-mode'.")

;; Code
(eval-when-compile
  (require 'cl-lib))

;; local, not packaged extensions
(add-to-list 'load-path (expand-file-name "site" tom/--emacs-dir))

;; load personal.org
  (let ((org-file (expand-file-name "personal.org" tom/--emacs-dir)))
      (require 'org)
      (org-babel-load-file org-file))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   '((projectile-indexing-method . native)
     (projectile-enable-caching . t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
