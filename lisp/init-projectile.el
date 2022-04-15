;;; init-projectile.el -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(setq projectile-known-projects-file
      (expand-file-name ".cache/projectile-bookmarks.eld" user-emacs-directory))

(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))

(when (executable-find "rg")
  (setq-default projectile-generic-command "rg --files --hidden"))

(provide 'init-projectile)
;;; init-projectile.el ends here
