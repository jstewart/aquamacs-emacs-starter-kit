(require 'anything)
(require 'anything-config)
;; (require 'anything-etags)
(require 'anything-rails)

(setq anything-sources
      (list anything-c-source-buffers
            anything-c-source-file-name-history
            anything-c-source-info-pages
            anything-c-source-man-pages
	    anything-c-source-file-cache
	    anything-c-source-rails-project-files
            anything-c-source-emacs-commands))

(provide 'anything-setup)
