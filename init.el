;; init.el
;;
;; Trigger loading of Aquamacs Emacs Starter Kit customizations, etc.
;; Inspired by http://github.com/technomancy/emacs-starter-kit/.
;;
;; Walter McGinnis, 2009-06-28
;;
;; http://github.com/walter/aquamacs-emacs-starter-kit

(add-to-list 'load-path (concat kitfiles-dir "/vendor"))

;; Load up ELPA, the package manager

;; test that ~/.emacs.d
;; and ~/.emacs.d/elpa/ exist
;; make them if not
(unless (file-directory-p "~/.emacs.d/elpa")
	    (make-directory "~/.emacs.d/elpa" t))

(require 'package)
(package-initialize)
(require 'starter-kit-elpa)

;;;;; Vendor libs
;; general coding/editing niceties
(require 'anything-setup)
(require 'line-num)
(require 'multi-term-setup)
(require 'vimpulse)
(require 'whitespace)
;; (require 'tabs)

;; Additional Modes
(require 'nxhtml)
(require 'undo-tree)
(global-undo-tree-mode)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)
;;;;; end Vendor libs

;;;;; Aquamacs Emacs Starter Kit specific customizations
(require 'adjust-path)
(require 'appearance)
(require 'ido-setup)
(require 'custom-keys)
(require 'misc-mode-tweaks)
(require 'org-mode-stuff)
;; (require 'override-aquamacs-to-be-more-emacsy)
(require 'prefer-utf)
(require 'useful-functions)
(require 'snippets)

;;;;; end Aquamacs Emacs Starter Kit specific customizations
(provide 'init)
