;;; Commentary:

;; test-unit.el allows you to unit tests for your Emacs Lisp
;; code. Executable specifications allow you to check that your code
;; is working correctly in an automated fashion that you can use to
;; drive the focus of your development. (It's related to Test-Driven
;; Development.) You can read up on it at http://behaviour-driven.org.

;; Specifications and contexts both must have docstrings so that when
;; the specifications aren't met it is easy to see what caused the
;; failure.  Each specification should live within a context. In each
;; context, you can set up relevant things to test, such as necessary
;; buffers or data structures. (Be sure to use lexical-let for setting
;; up the variables you need--since the specify macro uses lambdas,
;; closures will be made for those variables.) Everything within the
;; context is executed normally.

;; Each context can be tagged with the TAG form. This allows you to
;; group your contexts by tags. When you execute the specs, M-x test-unit
;; will ask you to give some tags, and it will execute all contexts
;; that match those tags.

;; When you want to run the specs, evaluate them and press M-x
;; test-unit. Enter the tags you want to run (or "all"), and they will be
;; executed with results in the *test-unit* buffer. You can also do M-x
;; specifications to show a list of all the specified behaviours of
;; the code.

;;; Implementation

;; Contexts are stored in the *test-unit-contexts* list as structs. Each
;; context has a "specs" slot that contains a list of its specs, which
;; are stored as closures. The expect form ensures that expectations
;; are met and signals test-unit-spec-failed if they are not.

;; Warning: the variables CONTEXT and SPEC-DESC are used within macros
;; in such a way that they could shadow variables of the same name in
;; the code being tested. Future versions will use gensyms to solve
;; this issue, but in the mean time avoid relying upon variables with
;; those names.

