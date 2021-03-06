;;; init-counsel.el -*- lexical-binding: t -*-

(use-package ivy
  :demand
  :hook (after-init . ivy-mode)
  :config (setq ivy-use-virtual-buffers t
                ivy-initial-inputs-alist nil
                ivy-count-format "%d/%d "
                enable-recursive-minibuffers t
                ivy-re-builders-alist '((t . ivy--regex-ignore-order))))

(use-package counsel
  :after ivy
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-c f" . counsel-recentf)
         ("C-c g" . counsel-git)))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t
                swiper-include-line-number-in-search t))

(provide 'init-counsel)
