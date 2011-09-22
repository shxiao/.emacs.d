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

(require 'org-publish)
(setq org-publish-project-alist
      '(("org-notes"
         :base-directory "F:/kuaipan/blog/" 
		 :base-extension "org"
         :publishing-directory "F:/me/shxiao.github.com/"
         :publishing-function org-publish-org-to-html
         :headline-level 4 
		 :section-numbers nil
         :table-of-contents t 
		 :drawers t 
		 :creator-info nil
         :recursive t :link-home "/"
         :style "<link rel='stylesheet' href='/etc/main.css' />"
		 :auto-sitemap t                ; Generate sitemap.org automagically...
		 :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)
		 :sitemap-title "Sitemap"  
		 :org-export-html-postamble nil	)
        ("org-static"
         :base-directory "F:/kuaipan/blog"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "F:/me/shxiao.github.com/static"
         :publishing-function org-publish-attachment
         :recursive t)
        ("org" :components ("org-notes" "org-static"))))

;;tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
