(defun ts-mode-init ()
  (add-node-modules-path)
  (flycheck-mode)
  (nvm-use-for-buffer)
  (prettier-js-mode))

(add-hook 'typescript-mode-hook 'ts-mode-init)
