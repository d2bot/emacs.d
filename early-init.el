;;; early-init.el --- Emacs 27 introduces early-init.el, which runs before init.el
;;; Commentary:
;; Runs before package and UI initializetion happens.
;;; Code:

;; For speed up the startup, please do NOT forget reset it to default
;; after Emacs after-init-hook, or it may cause freezes.
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'after-init-hook #'(lambda () (setq gc-cons-threshold 800000)))

;; Prevent unwanted runtime compilation for native-comp users
(setq native-comp-deferred-compilation nil)

;; [from Purcell Emacs]
;; Package initialize occurs automatically, before `user-init-file' is loaded
;; but after `early-init-file'. If you want to handle package initialization,
;; you can prevent Emacs from doing it early by uncomment next line!
(setq package-enable-at-startup nil)

;; Do not resize the frame at this early stage
(setq frame-inhibit-implied-resize t)

;; System default coding
(set-language-environment 'utf-8)

(provide 'early-init)
