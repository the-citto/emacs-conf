
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")))
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)



(use-package kanagawa-themes
  :ensure t
  :config
  (setq
   kanagawa-themes-comment-italic nil
   kanagawa-themes-keyword-italic nil)
  ;; (setq kanagawa-themes-custom-colors '((bg "#0d0c0c") (bg-p2 "#0d0c0c")))
  (load-theme 'kanagawa-dragon t))





(use-package emacs
  :config
  (mapc
   (lambda (item) (add-to-list 'default-frame-alist item))
   '(
     (font . "Hack Nerd Font-10:regular")
     (alpha-background . 85)
     (vertical-scroll-bars . nil)))

  (set-face-attribute 'line-number nil 
                      :background "#0d0c0c")
                      ;; :background "#000000")
  (set-face-attribute 'line-number-current-line nil 
                      :foreground "#FF9E3B"
                      :weight 'bold)
  (set-face-attribute 'default nil
                      :background "#0d0c0c")
                      ;; :background "#000000")
  (global-hl-line-mode t)
  (set-face-background 'hl-line "#000000")

  (setq-default
  ;;  shr-max-width 80
  ;;  indent-tabs-mode nil
  ;;  ns-use-proxy-icon nil
  ;;  frame-title-format "%*%b"
  ;;  cursor-in-non-selected-windows nil
  ;;  truncate-lines t
  ;;  show-trailing-whitespace nil
    display-line-numbers 'relative
    global-hl-line-mode t
  )

  (setq
   inhibit-startup-message t
   initial-scratch-message nil
   delete-auto-save-files t
   make-backup-files nil
   ;; gc-cons-threshold (* 100 1024 1024)
   ;; read-process-output-max (* 1024 1024)
   ;; scroll-margin 8
   ;; ring-bell-function #'ignore
   ;; tab-always-indent 'complete
   ;; show-paren-delay 0
   ;; display-line-numbers-grow-only t
   ;; display-line-numbers-width-start t
   ;; display-line-numbers-type 'visual
   )

  (toggle-scroll-bar -1)
  ;; (tool-bar-mode -1)
  ;; (menu-bar-mode -1)
  ;; (fset 'yes-or-no-p 'y-or-n-p)
  ;; (show-paren-mode 1)
  ;; (global-display-line-numbers-mode nil)
  ;; (blink-cursor-mode -1)
  ;; (save-place-mode 1)
  ;; (recentf-mode 1)
  ;; (winner-mode 1)
  ;; (global-subword-mode 1)
  ;;
  ;; (setq-default
  ;;  mode-line-format
  ;;  '("%e"
  ;;    mode-line-front-space
  ;;    mode-line-client
  ;;    mode-line-modified
  ;;    mode-line-remote
  ;;    mode-line-frame-identification
  ;;    mode-line-buffer-identification
  ;;    (vc-mode vc-mode)
  ;;    mode-line-end-spaces))

  ;; :hook
  ;; (compilation-mode . visual-line-mode)
  ;; (compilation-minor-mode . visual-line-mode)
  ;; (text-mode . auto-fill-mode)
  ;; (before-save . delete-trailing-whitespace)
  )


(use-package evil
  ;; :init
  ;; (setq evil-want-integration t)
  ;; (setq evil-want-keybinding nil)
  ;; (setq evil-want-C-u-scroll t)
  ;; (setq evil-want-C-i-jump nil)
  :config
  (evil-mode 1)
  ;; (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  ;; (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)
  ;;
  ;; ;; Use visual line motions even outside of visual-line-mode buffers
  ;; (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  ;; (evil-global-set-key 'motion "k" 'evil-previous-visual-line)

  (evil-set-initial-state 'messages-buffer-mode 'normal)
  (evil-set-initial-state 'dashboard-mode 'normal))


;; (use-package evil-collection
;;   :after evil
;;   :config
;;   (evil-collection-init))


;; (use-package org :straight (:type built-in)
;;   :config
;;   (setq org-agenda-window-setup 'current-window
;;         org-log-done 'time
;;         org-directory "~/org"
;;         org-default-notes-file (expand-file-name "notes.org" org-directory)
;;         org-capture-journal-file (expand-file-name "journal.org" org-directory)
;;         org-capture-todo-file (expand-file-name "todo.org" org-directory))
;;
;;   (setq org-capture-templates
;;         '(("t" "Personal Todo" entry
;;            (file+headline org-capture-todo-file "Todos")
;;            "* TODO %t %?\n%i\n" :prepend t)
;;           ("l" "Personal Todo with Link" entry
;;            (file+headline org-capture-todo-file "Todos")
;;            "* TODO %t %?\n%i\n%a" :prepend t)
;;           ("n" "Personal Note" entry
;;            (file+headline org-default-notes-file "Inbox")
;;            "* %u %?\n%i\n%a" :prepend t)
;;           ("j" "Journal" entry
;;            (file+olp+datetree org-capture-journal-file)
;;            "* %U %?\n%i\n%a" :prepend t)))
;;
;;   (setq org-agenda-files
;;         (list org-default-notes-file
;;               org-capture-journal-file
;;               org-capture-todo-file)))
;;
;; (use-package eglot :straight (:type built-in)
;;   :custom-face
;;   (eglot-highlight-symbol-face ((t (:inherit secondary-selection))))
;;   :config
;;   (setq eglot-events-buffer-size 0
;;         eglot-ignored-server-capabilities '(:inlayHintProvider)
;;         eglot-confirm-server-initiated-edits nil))
;;
;; ;; (use-package tree-sitter
;; ;;   :config
;;
;; ;;   (setq tree-sitter-major-mode-language-alist '((c++-mode . cpp))))
;;
;; (use-package tree-sitter
;; ;;   :config
;; ;; (setq treesit-language-source-alist
;; ;;       '(
;; ;;         (cpp "https://github.com/tree-sitter/tree-sitter-cpp")
;; ;;         (dart "https://github.com/UserNobody14/tree-sitter-dart")
;; ;;         ))
;;   :if (executable-find "tree-sitter")
;;   :hook (((
;;            c++-mode
;;            rustic-mode
;;            css-mode
;;            dart-mode
;;            ) . tree-sitter-mode)
;;          ((
;;            dart-mode
;;            c++-mode
;;            rustic-mode
;;            css-mode
;;            ) . tree-sitter-hl-mode)))

;; (use-package tree-sitter-langs
;;   :if (executable-find "tree-sitter")
;;   :after tree-sitter)
;;
;; (use-package general)

;; (use-package magit
;;   :config
;;   (with-eval-after-load 'magit
;;     (define-key magit-mode-map (kbd "<SPC>") nil))
;;   (add-to-list 'magit-no-confirm 'stage-all-changes)
;;   (setq magit-display-buffer-function
;;         (lambda (buffer)
;;           (display-buffer
;;            buffer (if (and (derived-mode-p 'magit-mode)
;;                            (memq (with-current-buffer buffer major-mode)
;;                                  '(magit-process-mode
;;                                    magit-revision-mode
;;                                    magit-diff-mode
;;                                    magit-stash-mode
;;                                    magit-status-mode)))
;;                       nil
;;                     '(display-buffer-same-window))))))
;;
;; (use-package forge :after magit)
;;
;; (use-package git-timemachine)
;;
;; (use-package undo-tree
;;   :config
;;   (setq undo-tree-auto-save-history t
;;         undo-tree-history-directory-alist
;;         '(("." . "~/.emacs.d/undo")))
;;   (global-undo-tree-mode))
;;
;; (use-package format-all)
;;
;; (use-package which-key
;;   :config
;;   (which-key-mode))
;;
;; (use-package helpful
;;   :config
;;   (global-set-key (kbd "C-h f") #'helpful-callable)
;;   (global-set-key (kbd "C-h v") #'helpful-variable)
;;   (global-set-key (kbd "C-h k") #'helpful-key))
;;
;; (use-package yasnippet
;;   :config
;;   (yas-global-mode 1))
;;
;; (use-package doom-snippets
;;   :after yasnippet
;;   :straight (doom-snippets :type git
;;                            :host github
;;                            :repo "hlissner/doom-snippets"
;;                            :files ("*.el" "*")))
;;
;; (use-package smartparens
;;   :config
;;   (require 'smartparens-config)
;;   (smartparens-global-mode)
;;   (sp-with-modes
;;       '(dart-mode rust-mode typescript-mode)
;;     (sp-local-pair "[" nil :post-handlers '(:add ("||\n[i]" "RET")))
;;     (sp-local-pair "(" nil :post-handlers '(:add ("||\n[i]" "RET")))
;;     (sp-local-pair "{" nil :post-handlers '(:add ("||\n[i]" "RET")))))
;;
;; (use-package consult)
;;
;; (use-package vertico
;;   :config
;;   (vertico-mode 1)
;;   :straight ( vertico :files (:defaults "extensions/*")
;;               :includes (vertico-directory)))
;;
;; (use-package vertico-directory
;;   :after vertico
;;   :straight nil
;;   :bind (:map vertico-map
;;               ("RET" . vertico-directory-enter)
;;               ("DEL" . vertico-directory-delete-char)
;;               ("M-DEL" . vertico-directory-delete-word))
;;   :hook (rfn-eshadow-update-overlay . vertico-directory-tidy))
;;
;; (use-package orderless
;;   :config
;;   (setq completion-styles '(orderless)
;;         completion-category-defaults nil
;;         completion-category-overrides '((file (styles partial-completion)))))
;;
;; (use-package marginalia
;;   :after vertico
;;   :config
;;   (marginalia-mode))
;;
;; (use-package savehist
;;   :config
;;   (savehist-mode))
;;
;; (use-package corfu
;;   :config
;;   (setq corfu-auto t
;;         corfu-auto-delay 0.1
;;         corfu-auto-prefix 1)
;;   (add-hook 'eshell-mode-hook
;;             (lambda ()
;;               (setq-local corfu-auto nil)
;;               (corfu-mode)))
;;   :init
;;   (global-corfu-mode)
;;   :straight ( corfu :files (:defaults "extensions/*")
;;               :includes (corfu-popupinfo)))
;;
;; (use-package corfu-popupinfo
;;   :after corfu
;;   :config
;;   (setq corfu-popupinfo-delay 0.2)
;;   :init
;;   (corfu-popupinfo-mode))
;;
;; (use-package doom-themes
;;   :config
;;   (setq doom-themes-enable-italic nil)
;;   (load-theme 'doom-gruvbox t))
;;
;; (use-package git-gutter
;;   :hook (prog-mode . git-gutter-mode))
;;
;; (use-package git-gutter-fringe
;;   :config
;;   (define-fringe-bitmap 'git-gutter-fr:added [224] nil nil '(center repeated))
;;   (define-fringe-bitmap 'git-gutter-fr:modified [224] nil nil '(center repeated))
;;   (define-fringe-bitmap 'git-gutter-fr:deleted [128 192 224 240] nil nil 'bottom))
;;
;; (use-package hl-todo
;;   :config
;;   (setq hl-todo-keyword-faces
;;         '(("TODO"   . "#FFD700")
;;           ("DONE"   . "#00FF00")
;;           ("NOTE"   . "#7777FF")
;;           ("FIXME"  . "#FF0000")))
;;   (global-hl-todo-mode))
;;
;; (use-package avy)
;;
;; (use-package perspective
;;   :init
;;   (setq persp-suppress-no-prefix-key-warning t)
;;   :config
;;   (persp-mode))



