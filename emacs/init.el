(require 'face-remap)

(add-to-list 'load-path (format "%s/lisp" user-emacs-directory))


(customize-save-variable 'custom-file (format "%s/lisp/custom.el" user-emacs-directory))

(load "packages")

(load "commands")
(load "custom")
(load "display")
(load "keybindings")
(load "trash")
