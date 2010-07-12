;; -*- Mode: Emacs-Lisp -*-

;;; This is a sample .emacs file.
;;;
;;; The .emacs file, which should reside in your home directory, allows you to
;;; customize the behavior of Emacs.  In general, changes to your .emacs file
;;; will not take effect until the next time you start up Emacs.  You can load
;;; it explicitly with `M-x load-file RET ~/.emacs RET'.
;;;
;;; There is a great deal of documentation on customization in the Emacs
;;; manual.  You can read this manual with the online Info browser: type
;;; `C-h i' or select "Emacs Info" from the "Help" menu.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                      Basic Customization                         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Enable the command `narrow-to-region' ("C-x n n"), a useful
;; command, but possibly confusing to a new user, so it's disabled by
;; default.
(put 'narrow-to-region 'disabled nil)

;;; Define a variable to indicate whether we're running XEmacs/Lucid Emacs.
;;; (You do not have to defvar a global variable before using it --
;;; you can just call `setq' directly like we do for `emacs-major-version'
;;; below.  It's clearer this way, though.)

(defvar running-xemacs (string-match "XEmacs\\|Lucid" emacs-version))

;; Make the sequence "C-x w" execute the `what-line' command, 
;; which prints the current line number in the echo area.
(global-set-key "\C-xw" 'what-line)

;; set up the function keys to do common tasks to reduce Emacs pinky
;; and such.

;; Make F1 invoke help
(global-set-key [f1] 'help-command)

;; Make F2 be `undo'
(global-set-key [f2] 'undo)

;; Make F3 be `find-file'
;; Note: it does not currently work to say
;;   (global-set-key [f3] "\C-x\C-f")
;; The reason is that macros can't do interactive things properly.
;; This is an extremely longstanding bug in Emacs.  Eventually,
;; it will be fixed. (Hopefully ..)
(global-set-key [f3] 'find-file)

;; Make F4 be "mark", F5 be "copy", F6 be "paste"
;; Note that you can set a key sequence either to a command or to another
;; key sequence.
(global-set-key [f4] 'set-mark-command)
(global-set-key [f5] "\M-w")
(global-set-key [f6] "\C-y")

;; Shift-F4 is "pop mark off of stack"
(global-set-key [(shift f4)] (lambda () (interactive) (set-mark-command t)))

;; Make F7 be `save-buffer'
(global-set-key [f7] 'save-buffer)

;; Make Shift-F7 be `save-buffer' followed by `delete-window'
(global-set-key [shift f7] "\C-x\C-s\C-x0")

;; Make F8 be "start macro", F9 be "end macro", F10 be "execute macro"
(global-set-key [f8] 'start-kbd-macro)
(global-set-key [f9] 'end-kbd-macro)
(global-set-key [f10] 'call-last-kbd-macro)

;; Here's an alternative binding if you don't use keyboard macros:
;; Make F8 be `save-buffer' followed by `delete-window'.
;;(global-set-key [f8] "\C-x\C-s\C-x0")

;; If you prefer delete to actually delete forward then you want to
;; uncomment the next line (or use `Customize' to customize this).
(setq delete-key-deletes-forward t)

;; emacsclient/server hook
(defvar server-seb-mode-map
(let ((map (make-sparse-keymap)))
  (define-key map "\C-xk"
    '(lambda ()
      (interactive)
      (shell-command (concat "touch " "/tmp/blah"))
      (server-edit)))
  map))
(define-minor-mode server-seb-mode "Server")
(add-hook 'server-visit-hook 'server-seb-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;              Customization of Specific Packages                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Load gnuserv, which will allow you to connect to XEmacs sessions
;;; using `gnuclient'.
;;; Alternatively, use `emacsclient' 
;;;   `-t' filename ; Opens a new frame on the terminal
;;;   `-c' filename ; Opens a new X frame
;;;   Set $EDITOR='emacsclient -t' for programs that auto invoke

;; If you never run more than one XEmacs at a time, you might want to
;; always start gnuserv.  Otherwise it is preferable to specify
;; `-f gnuserv-start' on the command line to one of the XEmacsen.
;;(gnuserv-start)
(server-start)

;;; Load LustyExplorer, which manages files and buffers.
(require 'lusty-explorer)

(custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
'(inhibit-startup-screen t))

(custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
)

;;; Load Path
(add-to-list 'load-path "/usr/share/emacs/site-lisp/"
)

;;; Load Tramp, which handles remote file editing
(require 'tramp)
(setq tramp-default-method "sshx")

(add-to-list 'tramp-default-method-alist '("localhost" "root" "sudo"))
(add-to-list 'tramp-default-method-alist '("" "root" "sshx"))

;;; Define Macros
(fset 'sms-comment-hash
   "\C-a#\C-n")

(fset 'sms-comment-semicolon
   "\C-a;\C-n")

(fset 'sms-del-first-char
   [?\C-a delete ?\C-n])

;;; Inferior Ruby Mode - ruby process in a buffer.
;;;                      adapted from cmuscheme.el
;;;
;;; Usage:
;;;
;;; (0) check ruby-program-name variable that can run your environment.
;;;
;;; (1) modify .emacs to use ruby-mode 
;;;     for example :
;;;
    (autoload 'ruby-mode "ruby-mode"
      "Mode for editing ruby source files" t)
    (setq auto-mode-alist
          (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
    (setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
                                  interpreter-mode-alist))
    
;;; (2) set to load inf-ruby and set inf-ruby key definition in ruby-mode.
;;;
    (autoload 'run-ruby "inf-ruby"
      "Run an inferior Ruby process")
    (autoload 'inf-ruby-keys "inf-ruby"
      "Set local key defs for inf-ruby in ruby-mode")
    (add-hook 'ruby-mode-hook
          '(lambda ()
             (inf-ruby-keys)
             (add-hook 'local-write-file-hooks
                       '(lambda()
                          (save-excursion
                            (untabify (point-min) (point-max))
                            (delete-trailing-whitespace)
                            )))
             (set (make-local-variable 'indent-tabs-mode) 'nil)
             (set (make-local-variable 'tab-width) 2)
             (define-key ruby-mode-map "C-m" 'newline-and-indent) ;Not sure if this line is 100% right but it works!
             ))

;;; irbsh

(load "irbsh")
(load "irbsh-toggle")

