;;; init-system.el --- configs for startup -*- lexical-binding:t -*-

;;; Code:

(prefer-coding-system 'utf-8)

;;; emacs settings
(setq auto-window-vscroll nil
      help-window-select nil
      inhibit-startup-screen t
      inhibit-default-init t
      make-backup-files nil)

(if (> emacs-major-version 28)
    (setq use-short-answers t)
  (defalias 'yes-or-no-p' 'y-or-n-p))

;; make tab-width always 2
(setq-default tab-width 2)
;; only use spaces instead of TAB, use C-q TAB to input the TAB char
(setq-default indent-tabs-mode nil)

;; auto-fill-mode , Help by command or variable name
(add-hook 'after-init-hook 'auto-fill-mode)

;; auto revert
(add-hook 'after-init-hook 'global-auto-revert-mode)

;; auto save mode
;; (add-hook 'after-init-hook 'auto-save-visited-mode)

;; provided by delsel.el(builtin)
(add-hook 'before-save-hook #'delete-trailing-whitespace)
;; provided by simple.el(builtin)
(add-hook 'after-init-hook 'delete-selection-mode)

(add-hook 'prog-mode-hook 'electric-layout-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)

;; Line number
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; minibuffer
(add-hook 'after-init-hook 'minibuffer-electric-default-mode)

;; column number
(add-hook 'after-init-hook 'column-number-mode)
(setq mode-line-compact t)

;; prettify symbols
(add-hook 'prog-mode-hook 'prettify-symbols-mode)

;; Recentf
(use-package recentf
  :hook (after-init . recentf-mode)
  :bind (("C-c r" . #'recentf-open-files))
  :config
  (setq-default recentf-max-menu-items 50
                recentf-max-saved-items 100)
  (add-to-list 'recentf-exclude '("~\/.emacs.d\/elpa\/")))

(add-hook 'after-init-hook 'global-visual-line-mode)

(provide 'init-system)
;; End:
