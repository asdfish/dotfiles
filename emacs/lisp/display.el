; remove startup
(setq inhibit-startup-message t
      initial-buffer-choice nil)
; hide stuff
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

; line number
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

; font
(set-face-attribute 'default nil :height 200)
(if (find-font (font-spec :name "0xProto Nerd Font Mono"))
  (set-fontset-font "fontset-startup" nil "0xProto Nerd Font Mono"))

; scrolling
(setq scroll-conservatively 100)

; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

; blink
(blink-cursor-mode 0)

; tabline
(require 'powerline)
(global-tab-line-mode 1)

(defun my/tab-line-tab-name-buffer (buffer &optional _buffers)
  (powerline-render (list
                     (powerline-slant-left 'tab-line nil 35)
                     (format " %s " (buffer-name buffer))
                     (powerline-slant-left nil 'tab-line 35))))
(setq tab-line-tab-name-function #'my/tab-line-tab-name-buffer)

(set-face-attribute 'tab-line-tab-current nil
                    :foreground "white")
(set-face-attribute 'tab-line nil
                    :foreground "black"
                    :background "black")

(setq tab-line-new-button-show nil)
(setq tab-line-close-button-show nil)
