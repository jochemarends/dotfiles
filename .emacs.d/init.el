(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode t)
(global-display-line-numbers-mode t)
(electric-pair-mode t)
(electric-indent-mode t)
(setq-default indent-tabs-mode nil)

(let ((my-font "JetBrains Mono Medium"))
  (when (find-font (font-spec :name my-font))
    (set-frame-font my-font nil t)))

;; prevent creating *~ files
(setq make-backup-files nil)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package modus-themes :ensure t)
(load-theme 'modus-vivendi :no-confirm)

(use-package elixir-ts-mode :ensure t)

(use-package evil :ensure t)

(use-package aggressive-indent :ensure t)

(use-package auctex :ensure t)

(require 'eglot)
