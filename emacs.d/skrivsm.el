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

(require 'save-visited-files)
(turn-on-save-visited-files-mode)

