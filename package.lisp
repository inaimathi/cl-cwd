;;;; package.lisp

(defpackage #:cl-cwd
  (:use #:cl)
  (:import-from #:alexandria #:with-gensyms)
  (:export #:with-cwd #:get-cwd #:cwd))

