
(defun jl-python-init ()
  (flycheck-mode)
  (setq flycheck-python-pylint-executable "/home/jlitzing/.emacs.d/p3emacs/bin/pylint"))

(add-hook 'python-mode-hook 'jl-python-init)

