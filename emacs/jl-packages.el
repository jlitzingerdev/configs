(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)))

(use-package dash
  :ensure t)

(use-package editorconfig
  :config  (editorconfig-mode 1))

(use-package exec-path-from-shell
  :if (memq window-system '(mac ns x))
  :init (exec-path-from-shell-initialize)
  :ensure t)

(use-package flycheck
  :ensure t
  :init (setq flycheck-check-syntax-automatically `(save))
  :hook ((python-mode . flycheck-mode)
         (go-mode . flycheck-mode))
  :config
  (flycheck-mode))

(use-package color-theme-solarized
  :ensure t
  :init
  (set-frame-parameter nil 'background-mode 'dark)
  :config (load-theme 'solarized t))

(use-package add-node-modules-path
  :ensure t
  :hook (typescript-mode . add-node-modules-path))

(use-package prettier-js
  :ensure t
  :hook (typescript-mode . prettier-js-mode))

(use-package go-mode
  :ensure t
  :init
  (exec-path-from-shell-copy-env "GOROOT")
  (exec-path-from-shell-copy-env "GOPATH")
  :hook (before-save . gofmt-before-save)
  :config
  (flycheck-mode)
  (setq tab-width 4))

(use-package markdown-mode
  :ensure t)
