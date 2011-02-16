;; kill-ring-search ELPA
(autoload 'kill-ring-search "kill-ring-search"
          "Search the kill ring in the minibuffer."
          (interactive))
(global-set-key "\M-\C-y" 'kill-ring-search)

;; findr ELPA
(autoload 'findr "findr" "Find file name." t)
(define-key global-map [(meta control S)] 'findr)
(autoload 'findr-search "findr" "Find text in files." t)
(define-key global-map [(meta control s)] 'findr-search)
(autoload 'findr-query-replace "findr" "Replace text in files." t)
(define-key global-map [(meta control r)] 'findr-query-replace)

;; blank-mode ELPA
(require 'blank-mode)

;; log4j ELPA
(autoload 'log4j-mode "log4j-mode" "Major mode for viewing log files." t)
(add-to-list 'auto-mode-alist '("\\.log\\'" . log4j-mode))
(add-hook
 'log4j-mode-hook
 (lambda ()
   (define-key log4j-mode-local-map [(control down)] 'log4j-forward-record)
   (define-key log4j-mode-local-map [(control up)] 'log4j-backward-record)))

;; nav ELPA
;; (add-to-list 'load-path "~/.emacs.d/elpa/nav-35")
(require 'nav)

;; yari ELPA
;;(defun ri-bind-key ()
;;  (local-set-key [f1] 'yari-anything))
;;(add-hook 'ruby-mode-hook 'ri-bind-key)

;; smart-tab ELPA
(require 'smart-tab)
(global-smart-tab-mode 1)

;; smex ELPA
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; lusty-explorer ELPA
(require 'lusty-explorer)
(add-hook 'lusty-setup-hook 'my-lusty-hook)
(defun my-lusty-hook ()
  (define-key lusty-mode-map "\C-j" 'lusty-highlight-next))

;; dired-isearch ELPA
(define-key dired-mode-map (kbd "C-s") 'dired-isearch-forward)
(define-key dired-mode-map (kbd "C-r") 'dired-isearch-backward)
(define-key dired-mode-map (kbd "ESC C-s") 'dired-isearch-forward-regexp)
(define-key dired-mode-map (kbd "ESC C-r") 'dired-isearch-backward-regexp)

;; set color-theme
(color-theme-blackboard)

