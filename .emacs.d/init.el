(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'evil)
  (package-install 'evil))

(require  'evil)
(evil-mode 1)

(unless (package-installed-p 'elixir-mode)
  (package-install 'elixir-mode))
