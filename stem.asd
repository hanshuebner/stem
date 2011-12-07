;;;; -*- Mode: LISP -*-

(in-package :cl-user)

(defpackage :stem.system
  (:use :cl :asdf))

(in-package :stem.system)

(defsystem :stem
  :name "stem"
  :version "0"
  
  :components ((:file "stem")))