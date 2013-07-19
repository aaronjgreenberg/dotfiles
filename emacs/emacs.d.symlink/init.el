;; Save file backups in a centralized location
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves/")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
