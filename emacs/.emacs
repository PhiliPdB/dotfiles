
;; Use package management!
(require 'package)

;; Add melpa package archive
(setq package-archives
            (append '(("melpa" . "https://melpa.org/packages/"))
		    package-archives))

(package-initialize)

(setq package-list '(agda2-mode
		     editorconfig
		     material-theme
		     tabbar
		     ))

;; rm -rf ~/.emacs.d/elpa to reload
(when (not package-archive-contents)
    (package-refresh-contents))

(dolist (package package-list)
    (when (not (package-installed-p package))
      (package-install package)))

;; Agda
;;(load-file (let ((coding-system-for-read 'utf-8))
;;	         (shell-command-to-string "agda-mode locate")))

;; Editorconfig
(require 'editorconfig)
(editorconfig-mode 1)

;; Theme
(load-theme 'material t)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-highlight-catchall-clause-face ((t (:background "white smoke" :foreground "black"))))
 '(agda2-highlight-datatype-face ((t (:foreground "blue"))))
 '(agda2-highlight-function-face ((t (:foreground "blue"))))
 '(agda2-highlight-positivity-problem-face ((t (:background "peru" :foreground "black"))))
 '(agda2-highlight-postulate-face ((t (:foreground "blue"))))
 '(agda2-highlight-primitive-face ((t (:foreground "blue"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "blue"))))
 '(agda2-highlight-record-face ((t (:foreground "blue"))))
 '(font-lock-comment-face ((t (:foreground "color-241" :slant italic)))))


