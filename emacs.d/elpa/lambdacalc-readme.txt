;;; Commentary:

;; This file provides an interpreter for untyped lambda calculus
;; expressions.

;; * Use:
;;
;; To evaluate a lambda calculus expression, type in the following,
;; replacing <expression> with the desired expression.
;;
;;   M-x lc-eval-expression RET (<expression>) RET
;;
;; Note that the expression must be surrounded by a set of
;; parentheses.  Omit the period in `lambda' constructs.
;;
;; To define a metavariable, evaluate the following code, replacing
;; <varname> with the name of the metavariable, and <expression> with
;; the desired expression.
;;
;;   (lc-def <varname> (<expression>))
;;
;; If you wish to evaluate lambda calculus expressions
;; programmatically, you can use the `lc-eval' macro, which takes
;; something of the form (<expression>).  There is no need to quote
;; the expression.
;;
;; To see each individual step of the evaluation process, do the
;; following.  By default, the expressions are pretty-printed; to
;; change that, customize the `lc-enable-pp' option.
;;
;;   M-x lc-step-expression RET (<expression>) RET

;; * Implementation details:
;;
;; This interpreter works in several stages.
;;
;; ** Translation (Lambda Calculus -> Emacs Lisp):
;;
;; The first step is translation from a lambda calculus expression to
;; an Emacs Lisp expression.  This involves determining bound and free
;; variables, and replacing implicit function calls with explicit
;; calls to `lc-apply'.
;;
;; ** Evaluation:
;;
;; The next step is to evaluate the translated expression, namely:
;; substituting previously-defined expressions for free variables and
;; repeatedly applying function calls until a lambda expression is
;; reached.
;;
;; In order to prevent infinite evaluation, a limit has been placed on
;; the number of consecutive evaluations that are permitted.  The
;; default is 50.  To change this, customize the `lc-max-steps'
;; option.
;;
;; ** Untranslation (Emacs Lisp -> Lambda Calculus):
;;
;; The final step is to take the result from evaluation and make it
;; look like a lambda calculus expression.  This involves removing the
;; "bound" and "free" prefixes from variables, removing calls to
;; `lc-apply', and making the resulting expression as minimal as
;; possible.

;; * Credits:
;;
;; Most of the environment comes from the Types and Programming
;; Languages textbook by Benjamin C. Pierce.  As far as I can tell,
;; these sample definitions are considered common knowledge, so I
;; should be able to distribute them.
;;
;; A couple of the functions of the environment are from
;; <http://www.onebadseed.com/blog/?p=34>, but were modified to use a
;; single-argument lambda form.
;;
;; Thanks go to Riastradh on #emacs for suggesting that I use
;; functions rather than the macro mess I previously had.

;; * Endorsements:
;;
;; From an IRC chat on #hcoop:
;;
;;   <mwolson> i'm currently making a lambda calculus interpreter in
;;             Emacs Lisp
;;   * Smerdyakov gags. :D
;;
;; From an IRC chat on #emacs:
;;
;;   * mwolson is tantalizingly close to having the final piece of his
;;     lambda calculus interpreter (in Emacs Lisp) done
;;   <forcer> :-)
;;   <offby1> *shudder*

