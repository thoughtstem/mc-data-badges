#lang racket

(provide show-badge)

(require (except-in website/bootstrap select)
         mc-data/models
         mc-data/server/util)

(define (show-badge b)
  (response/html
    (div "I am badge")))

