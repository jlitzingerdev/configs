
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(package-selected-packages
   (quote
    (ensime use-package clojure-mode go-mode flycheck-haskell haskell-mode rust-mode markdown-mode evil solarized-theme color-theme-solarized elpy magit flycheck)))
 '(safe-local-variable-values (quote ((test-case-name . twisted\.web\.test\.test_http)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)
(ido-mode)
(global-linum-mode)
(setq linum-format "%d ")
(require 'evil)
;;(evil-mode 1)
(column-number-mode)
(show-paren-mode)
(global-set-key (kbd "C-x g") 'magit-status)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;(add-hook 'after-init-hook #'global-flycheck-mode)
(load-file "~/.emacs.d/jl-python.el")
(load-file "~/.emacs.d/golang.el")
(load-file "~/.emacs.d/clojure.el")
(load-file "~/.emacs.d/scala.el")
(tool-bar-mode -1)
(setq flycheck-check-syntax-automatically '(save))
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

(setq c-default-style "linux"
      c-basic-offset 4)
(global-set-key (kbd "\C-x\C-m") 'execute-extended-command)
;;; init.el ends here


