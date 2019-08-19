;(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path "/home/tom/.emacs.d/lisp")

(package-initialize)

(require 'init-elpa)
(require 'init-ui)
(require 'init-project)
(require 'init-markdown)
(require 'init-c)
(require 'init-go)
(require 'init-sbcl)


(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
