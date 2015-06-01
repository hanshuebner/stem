;;;; -*- Mode: LISP -*-

(in-package :cl-user)

(defpackage :stem.system
  (:use :cl :asdf))

(in-package :stem.system)

(defsystem :stem
  :name "stem"
  :description "The Porter Stemming Algorithm"
  :author "Steve Haflich <@gmail.com>"
  :license "Probably LLGPL"
  :version "0"
  
  :components ((:file "stem")))
