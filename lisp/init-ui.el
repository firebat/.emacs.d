(setq tty-setup-hook nil
      inhibit-startup-message t
      inhibit-splash-screen t
      initial-scratch-message ""
      create-lockfiles nil
      make-backup-files nil
      column-number-mode t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode t)
(column-number-mode t)
(size-indication-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(global-key-binding "M-k" 'kill-buffer)


(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :config
  (add-hook 'prog-mode-hook 'smartparens-mode))


(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))


(use-package paredit
  :hook ((clojure-mode . paredit-mode)
	 (cider-repl-mode . paredit-mode)
	 (lisp-mode . paredit-mode)
	 (emacs-lisp-mode . paredit-mode)))


(use-package elscreen
  :config
  (elscreen-start)
  (setq elscreen-tab-display-kill-screen nil)
  (setq elscreen-tab-display-control nil)
  :bind (("M-c" . 'elscreen-create)
	 ("M-k" . 'elscreen-kill)
	 ("M-p" . 'elscreen-next)
	 ("M-n" . 'elscreen-previous)))


(provide 'init-ui)
