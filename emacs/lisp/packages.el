(defvar packages (list 'dashboard
                       'doom-modeline
                       'doom-themes
                       'evil
                       'evil-collection
                       'evil-commentary
                       'evil-escape
                       'org
                       'org-present
                       'treemacs
                       'treemacs-nerd-icons)
  "list of packages to be installed")

(defun refresh-package-archives()
  (interactive)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list 'package-archives
               '("melpa-stable" . "http://stable.melpa.org/packages/") t)
  (package-refresh-contents))

;(refresh-package-archives)

(dolist (i packages)
  (if (not (package-installed-p i))
    (package-install i)))

(use-package dashboard
             :ensure t
             :config
             (setq dashboard-startup-banner 'logo)
             (setq dashboard-center-content t)
             (setq dashboard-vertically-center-content t)
             (setq dashboard-items '((recents . 5)))
             :init
             (dashboard-setup-startup-hook))

(use-package doom-modeline
             :init
             (doom-modeline-mode 1))
(use-package doom-themes
             :init
             (load-theme 'doom-tokyo-night t))

(use-package evil
             :config
             (define-key evil-normal-state-map
                         (kbd "SPC ft") 'treemacs)
             (define-key evil-normal-state-map
                         (kbd "SPC ot") 'term)
             :init
             (setq evil-want-keybinding nil)
             (evil-mode 1))
(use-package evil-collection
             :after evil
             :init
             (evil-collection-init))
(use-package evil-commentary
             :after evil-collection
             :init
             (evil-commentary-mode))
(use-package evil-escape
             :after evil-collection
             :config
             (setq-default evil-escape-key-sequence "jk")
             :init
             (evil-escape-mode))

(use-package treemacs
             :config
             (treemacs-load-theme "nerd-icons"))
