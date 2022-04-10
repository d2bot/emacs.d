;;; early-init.el --- Emacs 27 introduces early-init.el, which runs before init.el
;;; Commentary:
;; Runs before package and UI initializetion happens.
;;; Code:

;; System default coding
(set-language-environment "UTF-8")

;; [from Purcell Emacs]
(setq package-enable-at-startup nil)

;; UI
(setq inhibit-startup-screen t)

(tool-bar-mode -1)

(setq default-input-method nil)

(provide 'early-init)
