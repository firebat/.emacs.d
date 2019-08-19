(use-package counsel
  :after ivy
  :config
  (counsel-mode))


(use-package ivy
  :ensure t
  :diminish ivy-mode
  :custom
  (ivy-use-virtual-buffers t)
  :config
  (ivy-mode t))


(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)
	 ("C-r" . swiper)))


(use-package company
  :init
  (global-company-mode)
  :config
  (setq	company-echo-delay 0
	company-idle-delay 0)
  :diminish company-mode)


(use-package magit
  :ensure t
  :diminish auto-revert-mode
  :commands (magit-status magit-checkout)
  :bind (("C-x g" . magit-status))
  :init
  (setq magit-revert-buffers 'silent
	magit-push-always-verify nil
	git-commit-summary-max-length 70))


(use-package dash
  :ensure)


(provide 'init-project)
