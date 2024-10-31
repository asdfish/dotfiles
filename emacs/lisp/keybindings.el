(defvar keybindings-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-=") 'text-scale-increase)
    (define-key map (kbd "C--") 'text-scale-decrease)
    map)
  "Personal keybindings map.")

(define-minor-mode keybindings-mode
                   "Personal keybindings"
                   :init-value t)

(keybindings-mode 1)
