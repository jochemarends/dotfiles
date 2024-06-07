(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)

(evil-mode 0)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(timu-caribbean))
 '(custom-safe-themes
   '("774218d0781ca9aad07888de412eac35b7920bafc10ecc014ecf493d7a74b310" default))
 '(package-selected-packages '(timu-caribbean-theme gruber-darker-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

