(setq inhibit-statup-messaqge t)
;; (add-to-list 'default-frame-alist '(background-color . "#000000"))

(scroll-bar-mode -1)
;; (tool-bar-mode -1)
;; (tooltip-mode -1)
;; (menu-bar-mode -1)

(add-to-list 'default-frame-alist '(alpha-background . 97))

(setq delete-auto-save-files t)
(setq make-backup-files nil)

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")))
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; (defvar elpaca-installer-version 0.8)
;; (defvar elpaca-directory (expand-file-name "elpaca/" user-emacs-directory))
;; (defvar elpaca-builds-directory (expand-file-name "builds/" elpaca-directory))
;; (defvar elpaca-repos-directory (expand-file-name "repos/" elpaca-directory))
;; (defvar elpaca-order '(elpaca :repo "https://github.com/progfolio/elpaca.git"
;;                               :ref nil :depth 1
;;                               :files (:defaults "elpaca-test.el" (:exclude "extensions"))
;;                               :build (:not elpaca--activate-package)))
;; (let* ((repo  (expand-file-name "elpaca/" elpaca-repos-directory))
;;        (build (expand-file-name "elpaca/" elpaca-builds-directory))
;;        (order (cdr elpaca-order))
;;        (default-directory repo))
;;   (add-to-list 'load-path (if (file-exists-p build) build repo))
;;   (unless (file-exists-p repo)
;;     (make-directory repo t)
;;     (when (< emacs-major-version 28) (require 'subr-x))
;;     (condition-case-unless-debug err
;;         (if-let* ((buffer (pop-to-buffer-same-window "*elpaca-bootstrap*"))
;;                   ((zerop (apply #'call-process `("git" nil ,buffer t "clone"
;;                                                   ,@(when-let* ((depth (plist-get order :depth)))
;;                                                       (list (format "--depth=%d" depth) "--no-single-branch"))
;;                                                   ,(plist-get order :repo) ,repo))))
;;                   ((zerop (call-process "git" nil buffer t "checkout"
;;                                         (or (plist-get order :ref) "--"))))
;;                   (emacs (concat invocation-directory invocation-name))
;;                   ((zerop (call-process emacs nil buffer nil "-Q" "-L" "." "--batch"
;;                                         "--eval" "(byte-recompile-directory \".\" 0 'force)")))
;;                   ((require 'elpaca))
;;                   ((elpaca-generate-autoloads "elpaca" repo)))
;;             (progn (message "%s" (buffer-string)) (kill-buffer buffer))
;;           (error "%s" (with-current-buffer buffer (buffer-string))))
;;       ((error) (warn "%s" err) (delete-directory repo 'recursive))))
;;   (unless (require 'elpaca-autoloads nil t)
;;     (require 'elpaca)
;;     (elpaca-generate-autoloads "elpaca" repo)
;;     (load "./elpaca-autoloads")))
;; (add-hook 'after-init-hook #'elpaca-process-queues)
;; (elpaca `(,@elpaca-order))
;; ;; Uncomment for systems which cannot create symlinks:
;; ;; (elpaca-no-symlink-mode)

(use-package kanagawa-themes
	:ensure t
	:config
	(setq kanagawa-themes-comment-italic nil)
	(setq kanagawa-themes-keyword-italic nil)
	(setq kanagawa-themes-custom-colors '((bg "#0D0C0C")))
    (load-theme 'kanagawa-dragon t))
(setq kanagawa-themes-custom-colors '((bg "#0D0C0C")))

;;(use-package nordic-night-theme
;;   :ensure t
;;   :config
;; 
;;   ;; Use this for the darker version
;;   ;; (load-theme 'nordic-midnight t)
;;   (load-theme 'nordic-night t))

;; (add-to-list 'default-frame-alist '(foreground-color . "#E0DFDB"))
;; (add-to-list 'default-frame-alist '(background-color . "#000000"))

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(display-line-numbers-mode t)
(setq display-line-numbers 'relative)
