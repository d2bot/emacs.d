;;; package -- Summary
;;; init.el  -*- lexical-binding: t; -*-
;;; Commentary:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-benchmarking)

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;; Adjust garbage collection thresholds during startup, and thereafter

(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(setq custom-file (locate-user-emacs-file "custom.el"))

;; settings depends on emacs version
(require 'init-version)

(require 'init-elpa)

(require 'init-system)

(require 'init-ui)

(require 'init-counsel)

(require 'init-company)

(require 'init-flycheck)

(require 'init-package)

(require 'init-projectile)

(proivde 'init)
;;; init.el ends here
