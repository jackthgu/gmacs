(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'dashboard)
(straight-use-package 'use-package)
(straight-use-package 'go-mode)
(straight-use-package 'zenburn-theme)
(load-theme 'zenburn t)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(use-package el-patch
  :straight t)

(use-package dashboard
  :straight t
  :ensure t
  :config
  (dashboard-setup-startup-hook))
