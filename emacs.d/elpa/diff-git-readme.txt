;;; Commentary:

;; This package adds commands for working with the Git index from
;; within `diff-mode'.
;;
;; When splitting up commits and other fine juggling of staged and
;; unstaged changes, `diff-mode' offers a number of advantages:
;; specifically `diff-reverse-direction' and `diff-split-hunk' are
;; extremely useful for teasing apart changes.
;;
;; The major commands are: `diff-git-hunk-stage' which takes the hunk
;; under the point and stages it in the index; `diff-git-diff-staged'
;; which makes a new diff buffer showing the staged changes in the
;; file; and `diff-git-diff-unstaged' which shows the unstaged
;; changes.
;;
;; The staged and unstaged diff buffers are refreshed when
;; `diff-git-hunk-stage' is run, or when the file they are tracking is
;; saved.
;;
;; This extension was written and tested on GNU Emacs 23.0.91.1. To
;; use this extension you will require magit 0.7 and vc-git (included
;; with Emacs)

