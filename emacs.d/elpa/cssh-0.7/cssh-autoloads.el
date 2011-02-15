;;; cssh-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (cssh-mode cssh-dired-find-file cssh-regexp-host-start
;;;;;;  cssh-term-remote-open cssh-turn-on-ibuffer-binding) "cssh"
;;;;;;  "../../../../.emacs.d/elpa/cssh-0.7/cssh.el" (19802 55134))
;;; Generated autoloads from ../../../../.emacs.d/elpa/cssh-0.7/cssh.el

(autoload 'cssh-turn-on-ibuffer-binding "cssh" "\
Not documented

\(fn)" nil nil)

(add-hook 'ibuffer-mode-hook 'cssh-turn-on-ibuffer-binding)

(global-set-key (kbd "C-=") 'cssh-term-remote-open)

(global-set-key (kbd "C-M-=") 'cssh-regexp-host-start)

(define-key dired-mode-map (kbd "C-=") 'cssh-dired-find-file)

(autoload 'cssh-term-remote-open "cssh" "\
Prompt for a remote host to connect to, and open a term there.

\(fn)" t nil)

(autoload 'cssh-regexp-host-start "cssh" "\
start ClusterSSH for all mathing hosts in  known_hosts

\(fn &optional CSSH-BUFFER-NAME)" t nil)

(autoload 'cssh-dired-find-file "cssh" "\
In dired, have cssh connect to hosts in the `dsh' configuration file.

\(fn)" t nil)

(autoload 'cssh-mode "cssh" "\
A major mode for controlling multiple terms at once.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/cssh-0.7/cssh-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/cssh-0.7/cssh.el") (19802 55134
;;;;;;  687325))

;;;***

(provide 'cssh-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cssh-autoloads.el ends here
