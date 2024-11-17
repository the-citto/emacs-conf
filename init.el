

(setq inhibit-statup-messaqge t)
;; (setq visible-bell t)

(scroll-bar-mode -1)
;; (tool-bar-mode -1)
;; (tooltip-mode -1)
;; (menu-bar-mode -1)

;; (set-fringe-mode 10)

(display-line-numbers-mode t)
(setq display-line-numbers 'relative)

(add-to-list 'default-frame-alist '(alpha-background . 97))
;; (load-theme 'wombat)
;;(setq frame-background-mode 'dark)


;; set backups direrctory
;; (setq backup-directory-alist '(("." . (concat user-emacs-directory "backups"))))
;; (setq backup-directory-alist '(("." . (concat user-emacs-directory "backups"))))
;; (setq backup-directory-alist '(("." . "~/.config/emacs/backups")))
(setq delete-auto-save-files t)
(setq make-backup-files nil)


;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")))
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))
;; (package-refresh-contents)

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


;; kanagawa
(use-package kanagawa-themes
  :ensure t
  :config
  (load-theme 'kanagawa-dragon t))
(setq kanagawa-themes-comment-italic nil)
(setq kanagawa-themes-keyword-italic nil)







(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(kanagawa-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
