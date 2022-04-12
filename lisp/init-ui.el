;;; init-ui.el -*- lexical-binding: t -*-

;;; Code:

(defun cleaner-ui()
  (when (and (fboundp 'tool-bar-mode) (not (eq tool-bar-mode -1)))
    (tool-bar-mode -1))

  (when (and (fboundp 'scroll-bar-mode) (not (eq scroll-bar-mode -1)))
    (scroll-bar-mode -1))
  (global-hl-line-mode t))

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
