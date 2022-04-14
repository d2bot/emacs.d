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

(use-package telephone-line
  :ensure t
  :init
  (setq telephone-line-lhs
                '((evil . (telephone-line-evil-tag-segment))
                  (accent . (telephone-line-vc-segment
                             telephone-line-erc-modified-channels-segment
                             telephone-line-process-segment))
                  (nil . (telephone-line-projectile-segment
                          telephone-line-buffer-segment))))
  (setq telephone-line-rhs
                '((nil . (telephone-line-flycheck-segment
                          telephone-line-misc-info-segment))
                  (accent . (telephone-line-major-mode-segment))
                  (evil (telephone-line-airline-position-segment))))
  :custom-face
  (telephone-line-evil-normal      ((t (:inherit telephone-line-evil :foreground "#d5c4a1" :background "#665c54"))))
  (telephone-line-evil-insert      ((t (:inherit telephone-line-evil :foreground "#282828" :background "#83a598"))))
  (telephone-line-evil-replace     ((t (:inherit telephone-line-evil :foreground "#282828" :background "#8ec07c"))))
  (telephone-line-evil-visual      ((t (:inherit telephone-line-evil :foreground "#282828" :background "#fe8019"))))
  (telephone-line-evil-operator    ((t (:inherit telephone-line-evil :foreground "#282828" :background "#fabd2f"))))
  (telephone-line-evil-emacs       ((t (:inherit telephone-line-evil :foreground "#282828" :background "#d3869b"))))
  (telephone-line-evil-motion      ((t (:inherit telephone-line-evil :foreground "#282828" :background "#b8bb26"))))
  (telephone-line-accent-inactive  ((t (:inherit mode-line-inactive  :foreground "#ebdbb2" :background "#282828"))))
  (telephone-line-accent-active    ((t (:inherit mode-line           :foreground "#ebdbb2" :background "#282828" :weight bold))))
  (telephone-line-projectile       ((t (:inherit mode-line           :foreground "#83a598" :weight     bold))))
  (telephone-line-unimportant      ((t (:inherit mode-line           :foreground "#7c6f64"))))
  :config
  (telephone-line-mode +1))
  (require 'telephone-line)
  (telephone-line-mode 1)

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
