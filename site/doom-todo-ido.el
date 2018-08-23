;;; doom-todo.el --- Display TODO, FIXME - ido-minibuffer selection. -*- lexical-binding: t; -*-

;; ivy version Copyright (C) 2018 Justin Smestad
;; this version (c) 2018 tom@tomsdiner.org


;; Package-Requires: ((emacs "25.1") (projectile "0.10.0"))
;; Keywords:

;;; Commentary:
;;;
;;; This is a straight port of the version supplied with Doom Emacs.
;;; modified to use ido-completion instead of ivy
;;; Code:

(require 'projectile)

(defvar doom/ido-buffer-icons nil
  "If non-nil, show buffer mode icons in `ido-switch-buffer' and the like.")

(defvar doom/ido-task-tags
  '(("TODO"  . warning)
    ("FIXME" . error))
  "An list of tags for `doom/ido-tasks' to search for.")


(defun doom/ido--tasks-candidates (tasks)
  "Generate a list of task candidates from TASKS."
  (let* ((max-type-width
          (cl-loop for task in doom/ido-task-tags maximize (length (car task))))
         (max-desc-width
          (cl-loop for task in tasks maximize (length (cl-cdadr task))))
         (max-width (max (- (frame-width) (1+ max-type-width) max-desc-width)
                         25)))
    (cl-loop
     with fmt = (format "%%-%ds %%-%ds%%s%%s:%%s" max-type-width max-width)
     for alist in tasks
     collect
     (let-alist alist
       (format fmt
               (propertize .type 'face (cdr (assoc .type doom/ido-task-tags)))
               (substring .desc 0 (min max-desc-width (length .desc)))
               (propertize " | " 'face 'font-lock-comment-face)
               (propertize (abbreviate-file-name .file) 'face 'font-lock-keyword-face)
               (propertize .line 'face 'font-lock-constant-face))))))

(defun doom/ido--tasks (target)
  "Search TARGET for a list of tasks."
  (let* (case-fold-search
         (task-tags (mapcar #'car doom/ido-task-tags))
         (cmd
          (format "%s -H -S --no-heading -- %s %s"
                  (or (when-let* ((bin (executable-find "rg")))
                        (concat bin " --line-number"))
                      (when-let* ((bin (executable-find "ag")))
                        (concat bin " --numbers"))
                      (error "Cannot find executables: ripgrep or the_silver_searcher"))
                  (shell-quote-argument
                   (concat "\\s("
                           (string-join task-tags "|")
                           ")([\\s:]|\\([^)]+\\):?)"))
                  target)))
    (save-match-data
      (cl-loop with out = (shell-command-to-string cmd)
               for x in (and out (split-string out "\n" t))
               when (condition-case-unless-debug ex
                        (string-match
                         (concat "^\\([^:]+\\):\\([0-9]+\\):.+\\("
                                 (string-join task-tags "\\|")
                                 "\\):?\\s-*\\(.+\\)")
                         x)
                      (error
                       (message "Error matching task in file: (%s) %s"
                                (error-message-string ex)
                                (car (split-string x ":")))
                       nil))
               collect `((type . ,(match-string 3 x))
                         (desc . ,(match-string 4 x))
                         (file . ,(match-string 1 x))
                         (line . ,(match-string 2 x)))))))


(defun doom/ido--tasks-open-action (x)
  "Jump to the file X and line of the current task."
  (let ((location (cadr (split-string x " | ")))
        (type (car (split-string x " "))))
    (cl-destructuring-bind (file line) (split-string location ":")
      (progn
        (find-file (expand-file-name file (projectile-project-root)))
        (goto-char (point-min))
        (forward-line (1- (string-to-number line)))
        (search-forward type (line-end-position) t)
        (backward-char (length type))
        (recenter)))))

;;;###autoload
(defun doom/ido-tasks (&optional arg)
  "Search through all TODO/FIXME tags in the current project. Optional ARG will search only that file."
  (interactive "P")
  (doom/ido--tasks-open-action
   (ido-completing-read (format "Tasks (%s): "
                                (if arg
                                    (concat "in: " (file-relative-name buffer-file-name))
                                  "project"))
                        (doom/ido--tasks-candidates
                         (doom/ido--tasks (if arg buffer-file-name (projectile-project-root)))))))

(provide 'doom-todo-ido)

;;; doom-todo-ido.el ends here
