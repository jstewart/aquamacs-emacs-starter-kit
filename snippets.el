;; Init rails snippets
(require 'yasnippet)
(yas/initialize)

;; (yas/load-directory yas/root-directory)
(yas/load-directory
 (concat (file-name-directory (or load-file-name buffer-file-name))
 	 "vendor/rails-snippets/")
)

;;; If you are using MuMaMo or nxml, you will need to tweak the mumamo
;;; keymap to let tab work for yasnippets
;; (if (boundp 'mumamo:version)
;;     ((setq mumamo-map
;;           (let ((map (make-sparse-keymap)))
;;             (define-key map [(control meta prior)] 'mumamo-backward-chunk)
;;             (define-key map [(control meta next)] 'mumamo-forward-chunk)
;;             (define-key map [tab] 'yas/expand)
;;             map))
;;      (mumamo-add-multi-keymap 'mumamo-multi-major-mode mumamo-map))
;;  )

(provide 'snippets)
