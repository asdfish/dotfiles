(defvar my/keybindings-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-=") 'text-scale-increase)
    (define-key map (kbd "C--") 'text-scale-decrease)
    map)
  "Personal keybindings map.")

(define-minor-mode my/keybindings-mode
                   "Personal keybindings"
                   :init-value t)

(my/keybindings-mode 1)
