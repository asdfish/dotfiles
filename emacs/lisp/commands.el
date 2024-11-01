(defun install-fonts()
  (interactive)
  (nerd-icons-install-fonts))

(defun compile-config()
  (interactive)
  (byte-recompile-directory user-emacs-directory 0))
