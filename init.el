(setq make-backup-files nil)
(setq default-directory "f:")


;;×Ô¶¯ÕÛÐÐ
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))


(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)


 (menu-bar-mode) 
 ;;(tool-bar-mode) 
 ;; (scroll-bar-mode) 
 
(progn
   (global-set-key (kbd "C-c p") 'paredit-wrap-round))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

 ;;go-mode
(add-to-list 'load-path "C:/Documents and Settings/Administrator/Application Data/.emacs.d/golang" t)
(require 'go-mode-load)

;;tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)