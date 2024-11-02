(defvar packages (list 'dashboard
                       'doom-modeline
                       'doom-themes
                       'evil
                       'evil-collection
                       'evil-commentary
                       'evil-escape
                       'hide-mode-line
                       'neotree
                       'org
                       'org-present
                       'powerline
                       'vimish-fold
                       'vterm)
  "list of packages to be installed")

(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;(package-refresh-contents)

(dolist (i packages)
  (if (not (package-installed-p i))
      (package-install i)))

(use-package dashboard
  :ensure t
  :config
  (setq dashboard-startup-banner 'logo)
  (setq dashboard-center-content t)
  (setq dashboard-vertically-center-content t)
  (setq dashboard-items '((recents . 10)))
  :init
  (dashboard-setup-startup-hook))

(use-package doom-modeline
  :init
  (doom-modeline-mode 1))
(use-package doom-themes
  :init
  (load-theme 'doom-tokyo-night t)
  )

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  (evil-mode 1)
  (evil-define-key 'normal 'global
                   (kbd "C-q") 'evil-prev-buffer)
  (evil-define-key 'normal 'global
                   (kbd "C-e") 'evil-next-buffer)
  (evil-define-key 'normal 'global
                   (kbd "C-c") 'evil-delete-buffer)
  (evil-define-key 'normal 'global
                   (kbd "SPC ft") 'neotree-toggle))
(use-package evil-commentary
  :after evil
  :init
  (evil-commentary-mode))
(use-package evil-collection
  :after evil
  :init
  (evil-collection-init))
(use-package evil-escape
  :after evil-collection
  :config
  (setq-default evil-escape-key-sequence "jk")
  :init
  (evil-escape-mode))

(use-package neotree
             :config
             (add-hook 'neotree-mode-hook
                       (lambda()
                         (define-key evil-normal-state-local-map
                                     (kbd "a") 'neotree-create-node)
                         (define-key evil-normal-state-local-map
                                     (kbd "W") 'neotree-collapse-all)
                         (display-line-numbers-mode 0)))
             (setq neo-theme 'nerd-icons))

(use-package org-present
  :config
  (define-key org-present-mode-keymap (kbd "h") 'org-present-hide-cursor)
  (define-key org-present-mode-keymap (kbd "s") 'org-present-show-cursor)
  (define-key org-present-mode-keymap (kbd "q") 'org-present-quit)
  (define-key org-present-mode-keymap (kbd "k") 'org-present-prev)
  (define-key org-present-mode-keymap (kbd "j") 'org-present-next)

  :init
  (add-hook 'org-present-mode-hook
            (lambda()
              (setq text-scale-mode-amount 3)
              (text-scale-mode 1)

              (hide-mode-line-mode 1)
              (display-line-numbers-mode 0)
              (evil-insert-state)

              (org-present-read-only)
              (org-present-hide-cursor)))
  (add-hook 'org-present-mode-quit-hook
            (lambda()
              (setq text-scale-mode-amount 0)
              (text-scale-mode 0)

              (hide-mode-line-mode 0)
              (display-line-numbers-mode 1)
              (evil-normal-state)

              (org-present-show-cursor))))


(use-package vimish-fold
  :init
  (vimish-fold-mode 1))
