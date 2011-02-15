(autoload 'kill-ring-search "kill-ring-search"
          "Search the kill ring in the minibuffer."
          (interactive))
(global-set-key "\M-\C-y" 'kill-ring-search)

(autoload 'findr "findr" "Find file name." t)
(define-key global-map [(meta control S)] 'findr)

(autoload 'findr-search "findr" "Find text in files." t)
(define-key global-map [(meta control s)] 'findr-search)

(autoload 'findr-query-replace "findr" "Replace text in files." t)
(define-key global-map [(meta control r)] 'findr-query-replace)

(require 'blank-mode)

(require 'mv-shell)
(mv-shell-mode 1)

(require 'nav)

(require 'smart-tab)
(global-smart-tab-mode 1)

