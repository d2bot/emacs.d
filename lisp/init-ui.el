;;; init-ui.el -*- lexical-binding: t -*-

;;; Code:
(defun cleaner-ui()
  (when (and (fboundp 'tool-bar-mode) (not (eq tool-bar-mode -1)))
    (tool-bar-mode -1))

  (when (and (fboundp 'scroll-bar-mode) (not (eq scroll-bar-mode -1)))
    (scroll-bar-mode -1))
  (global-hl-line-mode t))

;;(use-package flucui-themes) ;;(flucui-themes-load-style 'light)
(use-package modus-themes)
;(load-theme 'modus-operandi t)
(modus-themes-load-operandi)       ;; Light Theme
;; (modus-themes-load-vivendi)     ;; Dark Theme

;; I'm activating mini-modeline after smart-mode-line
(setq mini-modeline-face-attr 'default)
(use-package mini-modeline)
(mini-modeline-mode)
(use-package mood-line)

;;(use-package all-the-icons
;;  :if (display-graphic-p))
;;(use-package doom-modeline
;;  :ensure t
;;  :init (doom-modeline-mode 1))

;; evil
(use-package evil)
(require 'evil)
(evil-mode 1)


;; treemacs
(use-package treemacs
  :config
  (treemacs-resize-icons 14)
  (treemacs-filewatch-mode t))

(use-package treemacs-evil)

(add-hook 'window-setup-hook #'cleaner-ui)

(provide 'init-ui)
