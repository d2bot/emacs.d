;;; init-flyecheck.el -*- lexical-binding: t -*-

(use-package flycheck
  :hook (prog-mode . global-flycheck-mode)) ;; 只在编程模式下启用

;; :hook (after-ini . global-flycheck-mode)

(provide 'init-flycheck)
