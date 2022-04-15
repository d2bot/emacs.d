;;; init-company.el -*- lexical-binding: t -*-

(use-package company
  :diminish "Cmp"
  :hook (after-init . global-company-mode)
  :config (setq company-minimum-prefix-length 1
                company-show-quick-access t))

(provide 'init-company)
