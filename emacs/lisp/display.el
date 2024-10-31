; remove startup
(setq inhibit-startup-message t
      initial-buffer-choice nil)
; hide stuff
(menu-bar-mode -1)
(toggle-scroll-bar -1)
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
