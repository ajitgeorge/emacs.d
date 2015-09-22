(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defvar technomancy-recommended-packages '(better-defaults
                                           paredit
                                           idle-highlight-mode
                                           ido-ubiquitous
                                           find-file-in-project
                                           magit
                                           smex
;                                           scpaste
                                           solarized-theme))

(dolist (p technomancy-recommended-packages)
  (when (not (package-installed-p p))
    (package-install p)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme (if (display-graphic-p) 'solarized-dark 'tango-dark))

(global-set-key (kbd "C-x g") 'magit-status)

(add-to-list 'load-path "~/.emacs.d/vendor/yaml-mode-0.0.11/")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; Enable windmove (shift+arrow key to move between windows)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))


;; Undo better-defaults' installation of hippie-expand
(global-set-key (kbd "M-/") 'dabbrev-expand)
(global-set-key (kbd "M-?") 'hippie-expand)

;; IntelliJ build key
(global-set-key (kbd "<C-f9>") 'compile)

(add-to-list 'load-path "~/.emacs.d/vendor/")
(require 'thrift-mode)

