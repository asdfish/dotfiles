(defun create-directory (path)
  (if (not (file-directory-p path))
      (make-directory path)))

(create-directory "~/.config/emacs/autosaves")
(create-directory "~/.config/emacs/backups")

(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.config/emacs/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.config/emacs/backups/"))))
