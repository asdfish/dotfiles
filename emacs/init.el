; display

(add-to-list 'load-path (format "%s/lisp" user-emacs-directory))


(customize-save-variable 'custom-file (format "%s/lisp/custom.el" user-emacs-directory))

(load "custom")
(load "display")
(load "packages")
(load "keybindings")
(load "trash")
