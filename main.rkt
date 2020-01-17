#lang racket

(provide show-badge)

(require (except-in website/bootstrap select)
         mc-data/models)

(define (show-badge b)
  (div "I am badge"))

