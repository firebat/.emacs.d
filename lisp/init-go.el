(use-package go-mode
  :ensure t
  :hook (go-mode . (lambda ()
		     (add-hook 'before-save-hook 'gofmt-before-save)
		     (setq tab-width 4)
		     (setq indent-tabs-mode 1)))
  :config
  (use-package go-eldoc
    :ensure t
    :config
    (add-hook 'go-mode-hook 'go-eldoc-setup))

  (use-package company-go
    :ensure t
    :config
    (add-hook 'go-mode-hook 'company-mode)
    (add-to-list 'company-backends 'company-go))

  (use-package go-guru
    :config (go-guru-hl-identifier-mode))

  (use-package go-gopath
    :ensure t))

(provide 'init-go)
