
(setq packages-file (expand-file-name "packages.el" user-emacs-directory))
(setq keys-file (expand-file-name "keys.el" user-emacs-directory))
(setq emacs-custom-file (expand-file-name "emacs-custom.el" user-emacs-directory))

(load packages-file)
(load keys-file)
;; (load emacs-custom-file)





;;
;;
;; ;; (org-babel-load-file
;; ;;   (expand-file-name
;; ;;     "config.org"
;; ;;     user-emacs-directory))
;;
;;
;; (setq inhibit-statup-messaqge t)
;; (setq visible-bell t)
;;
;; (scroll-bar-mode -1)
;; ;; (tool-bar-mode -1)
;; ;; (tooltip-mode -1)
;; ;; (menu-bar-mode -1)
;;
;; ;; (set-fringe-mode 10)
;;
;; (add-to-list 'default-frame-alist '(alpha-background . 85))
;; ;; (load-theme 'wombat)
;; ;;(setq frame-background-mode 'dark)
;;
;;
;; ;; set backups direrctory
;; ;; (setq backup-directory-alist '(("." . (concat user-emacs-directory "backups"))))
;; ;; (setq backup-directory-alist '(("." . (concat user-emacs-directory "backups"))))
;; ;; (setq backup-directory-alist '(("." . "~/.config/emacs/backups")))
;; (setq delete-auto-save-files t)
;; (setq make-backup-files nil)
;;
;;
;; ;; Make ESC quit prompts
;; (global-set-key (kbd "<escape>") 'keyboard-escape-quit)
;;
;; (require 'package)
;;
;; (setq package-archives '(("melpa" . "https://melpa.org/packages/")))
;; ;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;
;; (package-initialize)
;;
;; (unless package-archive-contents
;;   (package-refresh-contents))
;;
;; ;; Initialize use-package on non-Linux platforms
;; (unless (package-installed-p 'use-package)
;;   (package-install 'use-package))
;;
;; (require 'use-package)
;; (setq use-package-always-ensure t)
;;
;;
;; ;; kanagawa
;; (use-package kanagawa-themes
;;   :ensure t
;;   :config
;;   (setq kanagawa-themes-comment-italic nil)
;;   (setq kanagawa-themes-keyword-italic nil)
;;   (setq kanagawa-themes-custom-colors '((bg "#0d0c0c") (bg-p2 "#0d0c0c")))
;;   (load-theme 'kanagawa-dragon t))
;; ;; (setq kanagawa-themes-dragon-color (delq (assoc bg kanagawa-themes-dragon-color) kanagawa-themes-dragon-color))
;; ;; (add-to-list 'kanagawa-themes-dragon-colors '(bg "#FFFFFF"))
;;
;; ;; (display-line-numbers-mode t)
;; ;; (setq display-line-numbers 'relative)
;;
;;
;; ;; (add-to-list 'default-frame-alist '(background-color . "#000000"))
;; ;; (setq frame-background-mode 'dark)
;;
;;
;;
;; (use-package evil
;;   :init
;;   (setq evil-want-integration t)
;;   (setq evil-want-keybinding nil)
;;   :config
;;   (evil-mode 1)
;;   (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
;;   (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)
;;
;;   ;; Use visual line motions even outside of visual-line-mode buffers
;;   (evil-global-set-key 'motion "j" 'evil-next-visual-line)
;;   (evil-global-set-key 'motion "k" 'evil-previous-visual-line)
;;
;;   (evil-set-initial-state 'messages-buffer-mode 'normal)
;;   (evil-set-initial-state 'dashboard-mode 'normal))
;;
;; (use-package evil-collection
;;   :after evil
;;   :config
;;   (evil-collection-init))
;;
;;
;;
;; ;; (setq emacs-custom-file (expand-file-name "emacs-custom.el" user-emacs-directory))
;; (setq keys-file (expand-file-name "keys.el" user-emacs-directory))
;;
;;
;; ;; (load emacs-custom-file)
;; (load keys-file)
;;
;; ;; (global-display-line-numbers-mode t)
;; ;; (setq global-display-line-numbers 'relative)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil kanagawa-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
