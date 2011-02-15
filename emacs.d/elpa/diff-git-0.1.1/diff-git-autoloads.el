;;; diff-git-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (diff-git-default-bindings diff-git-diff-unstaged
;;;;;;  diff-git-diff-staged diff-git-buffer-stage diff-git-hunk-stage)
;;;;;;  "diff-git" "../../../../.emacs.d/elpa/diff-git-0.1.1/diff-git.el"
;;;;;;  (19802 55133))
;;; Generated autoloads from ../../../../.emacs.d/elpa/diff-git-0.1.1/diff-git.el

(autoload 'diff-git-hunk-stage "diff-git" "\
Stage the current hunk in the index using 'git apply --cached'.

\(fn)" t nil)

(autoload 'diff-git-buffer-stage "diff-git" "\
Stage the all the hunks in the current `diff-mode' buffer using 'git apply --cached'.

\(fn)" t nil)

(autoload 'diff-git-diff-staged "diff-git" "\
Show the diff of the index and HEAD.
Optional argument BUF is the buffer to store the diff contents
in, otherwise *vc-diff-staged*.

\(fn &optional BUF)" t nil)

(autoload 'diff-git-diff-unstaged "diff-git" "\
Show the diff of the working tree and the index.
Optional argument BUF is the buffer to store the diff contents
in, otherwise *vc-diff-unstaged*.

\(fn &optional BUF)" t nil)

(autoload 'diff-git-default-bindings "diff-git" "\
Add bindings to the `diff-mode' keymap.

\(fn)" nil nil)

(eval-after-load 'diff-mode '(diff-git-default-bindings))

(eval-after-load 'vc-mode '(diff-git-default-bindings))

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/diff-git-0.1.1/diff-git-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/diff-git-0.1.1/diff-git.el") (19802
;;;;;;  55133 841193))

;;;***

(provide 'diff-git-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; diff-git-autoloads.el ends here
