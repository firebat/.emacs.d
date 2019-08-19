(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/bin/sbcl")

(use-package slime-company
  :defer)

(use-package slime
  :init
  (slime-setup '(slime-fancy slime-tramp slime-asdf))
  (slime-require :swank-listener-hooks))


(provide 'init-sbcl)
