(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(load-theme 'nimbus t)

(unless (package-installed-p 'evil)
  (package-install 'evil))

(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)

(setq-default c-basic-offset 4)

(setq-default tab-width 4)

(setq vc-follow-symlinks t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(rust-mode evil nimbus-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
