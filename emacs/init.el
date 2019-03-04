(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(eval-when-compile
  (require 'use-package))


(ido-mode)
(global-linum-mode)
(setq linum-format "%d ")
(column-number-mode)
(show-paren-mode)
(setq-default show-trailing-whitespace t)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))
;(add-hook 'after-init-hook #'global-flycheck-mode)
;(load-file "~/.emacs.d/jl-python.el")
;(load-file "~/.emacs.d/golang.el")
;(load-file "~/.emacs.d/clojure.el")
;(load-file "~/.emacs.d/jal-js.el")
(load-file "~/.emacs.d/jl-packages.el")
;(load-file "~/.emacs.d/jl-typescript.el")
(tool-bar-mode -1)
(setq flycheck-check-syntax-automatically '(save))
;(eval-after-load 'flycheck
;  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

(setq c-default-style "linux"
      c-basic-offset 4
      indent-tabs-mode nil)

; Keybindings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x t") 'ansi-term)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(setq split-width-threshold nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (typescript-mode editorconfig prettier-js nvm add-node-modules-path ag flycheck-haskell haskell-mode magit go-mode js2-mode flycheck use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; init.el ends here
