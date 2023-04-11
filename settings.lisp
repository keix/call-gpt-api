(defpackage :settings (:use :cl))
(in-package :settings)

; You can replace this variable with whatever you want.
(defvar *model* "text-davinci-003")

(defvar endpoints  
  '((:ada                  . "https://api.openai.com/v1/completions")
    (:babbage              . "https://api.openai.com/v1/completions")
    (:curie                . "https://api.openai.com/v1/completions")
    (:davinci              . "https://api.openai.com/v1/completions")
; --------------------------------------------------------------------------
    (:dall-e-2             . "https://api.openai.com/v1/images/generations")
; ------------------------------------------------------------------------
;   (curie-instruct-beta   . "")
;   (davinci-instruct-bete . "")    
; --------------------------------------------------------------------------
    (:text-ada-001         . "https://api.openai.com/v1/completions")
    (:text-babbage-001     . "https://api.openai.com/v1/completions")
    (:text-curie-001       . "https://api.openai.com/v1/completions")
    (:text-davinci-001     . "https://api.openai.com/v1/completions")
    (:text-davinci-002     . "https://api.openai.com/v1/completions")
    (:text-davinci-003     . "https://api.openai.com/v1/completions")
; --------------------------------------------------------------------------
    (:gpt-3.5-turbo        . "https://api.openai.com/v1/chat/completions")
    (:gpt-3.5-turbo-0301   . "https://api.openai.com/v1/chat/completions")
    (:gpt-4                . "https://api.openai.com/v1/chat/completions")
    (:gpt-4-0314           . "https://api.openai.com/v1/chat/completions")
    (:gpt-4-32k            . "https://api.openai.com/v1/chat/completions")
    (:gpt-4-32k-0314       . "https://api.openai.com/v1/chat/completions")))
; --------------------------------------------------------------------------


(defun get-endpoint ()
  (cdr (assoc (intern (string-upcase *model*) :keyword) endpoints)))

(defun get-request-json () 
  (format nil "request-jsons/~A.json" *model*))

(export 'get-endpoint :settings)
(export 'get-request-json :settings)
