(use-package rtags
  :defer
  :config
  (rtags-enable-standard-keybindings nil "C-c R")
  
  (use-package company-rtags
    :defer))


(use-package irony
  :ensure t
  :hook
  (c-mode . irony-mode)
  (c++-mode . irony-mode)
  
  :config
  (use-package company-irony
    :ensure t
    :config
    (add-to-list 'company-backends 'company-irony))

  (use-package company-irony-c-headers
    :ensure t
    :defer t
    :config
    (add-to-list 'company-backends 'company-irony-c-headers)))


(use-package cmake-ide
  :after cc-mode
  :init
  :config
  (cmake-ide-setup))

(provide 'init-c)
