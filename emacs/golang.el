(add-hook 'go-mode-hook
	  (lambda ()
	    (flycheck-mode)
	    (setq tab-width 4)))
