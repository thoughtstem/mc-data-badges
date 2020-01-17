#lang racket

(require website/bootstrap
         racket/runtime-path)

(provide static)

(define-runtime-path here ".")


(define (static)
  (list
    (page test.png
          (build-path here "imgs" "test.png"))))
