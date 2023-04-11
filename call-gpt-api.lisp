#!/usr/bin/env sbcl --script

(load "~/quicklisp/setup.lisp")
(load "settings.lisp")

(ql:quickload 'drakma)
(ql:quickload 'cl-json)

(defparameter *api-key* (sb-posix:getenv "OPENAI_API_KEY"))
(defparameter *endpoint* (settings:get-endpoint))
(defparameter *request-json* (settings:get-request-json))

(defun call-gpt-api ()
  (drakma:http-request
    *endpoint*
    :method :post
    :content-type "application/json"
    :additional-headers `(("Authorization" . ,(format nil "Bearer ~A" *api-key*)))
    :content (read-file-into-string *request-json*)))

(defun loading-config-file (model)
  (let ((config (read-file-into-string model)))
        (cl-json:decode-json-from-string config)))

(defun read-file-into-string (file)
  (with-open-file (stream file)
    (let ((contents (make-string (file-length stream))))
      (read-sequence contents stream) contents)))

; Run call-gpt-api and output the response.
(format t "~A" (map 'string #'code-char (call-gpt-api)))

