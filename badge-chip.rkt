#lang racket

(provide badge-chip)

(require (except-in website/bootstrap select)
         mc-data/models)

(define (badge-chip badge)
  (a href: (~a "/badges/" (badge-id badge))
     (badge-pill-info 
       (badge-name badge))))
