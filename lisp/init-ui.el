;;; init-ui.el -*- lexical-binding: t -*-

;;; Code:

(defun cleaner-ui()
  (when (and (fboundp 'tool-bar-mode) (not (eq tool-bar-mode -1)))
             (tool-bar-mode -1)))


(add-hook 'window-setup-hook #'cleaner-ui)

(provide 'init-ui)
