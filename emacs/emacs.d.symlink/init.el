;; Save file backups in a centralized location
(setq backup-directory-alist
  `((".*" . ,"~/.emacs.d/.saves")))
(setq auto-save-file-name-transforms
	`((".*" ,"~/.emacs.d/.saves" t)))
