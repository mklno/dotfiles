(load "~/.emacs.d/myFunction.el")
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner "~/.emacs.d/avatar.png")
  (setq dashboard-banner-logo-title "Nerd today, boss tomorrow."))
(setq inhibit-startup-screen t)

(use-package ef-themes
  :if window-system
  :ensure t
  :config
  ;; Enable the theme
  (load-theme 'ef-duo-dark t))

(use-package treemacs
  :ensure t
  :defer t
  :bind
  (("C-c t" . treemacs))
  :config
  (setq treemacs-width 30)
  (setq-local mode-line-format nil))



(setq use-dialog-box nil)
(setq use-file-dialog nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(menu-bar-mode -1)
(tool-bar-mode -1)
(fringe-mode -1)
(scroll-bar-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)
(add-to-list 'default-frame-alist
	     '(font . "JetBrains Mono-13"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3ca84532551daa1b492545bbfa47fd1b726ca951d8be29c60a3214ced30b86f5"
     "438f0e2b9fd637c53b20c27c140d2fc14fa154acf9ef92630666cab497c69742"
     "917d7e7f0483dc90a5e2791db980ce9bc39e109a29198c6e9bdcd3d88a200c33"
     "9a456f2aac10f18204e8ece27c84950c359f91bb06bda8c711bf4f5095ca8250"
     "5014b68d3880d21a5539af6ef40c1e257e9045d224efb3b65bf0ae7ff2a5e17a"
     "b0dc32efddfd36f0a12d022ac3c79a3d6d9614558bc8a991e5a5a29be70dafe9"
     "ddb9bc949afc4ead71a8861e68ad364cd3c512890be51e23a34e4ba5a18b0ade"
     "b940c68944436ab216d83c13a05808bcacf40ac224c4aba2c209c3cbf2c76427"
     "8081bc8961e8428dc7897544d6deaa9099b0807e57fc4281187c1bda4ff0c386"
     "2949f71b19f52bcee693534b6b6ad8796e495eb0c676e9c94f3e33f10511eb47"
     "a8a5fd1c8afea56c5943ead67442a652f1f64c8191c257d76988edb0b1ad5dfa"
     "779aa194815bd4f88b672856961077bc3c735cb82d05b440e981bd218749cf18"
     "df2cdf4ffb933c929b6a95d60ac375013335b61565b9ebf02177b86e5e4d643f"
     default))
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
