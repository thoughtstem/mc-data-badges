#lang racket

(provide badge-show
         badges-index
         badge-card)

(require (except-in website/bootstrap select)
         mc-data/models
         webapp/server/util
         (only-in 2htdp/image circle)
         mc-data-people/person-chip
         webapp/views/util)

(define (badges-index badges)
  (container
    (card-deck
      (map (compose col badge-card) badges))))

(define (badge-show badge)
  (container
    (back-to-index "badge")
    (badge-card badge)))

(define (badge-card badge)
  (card 
    (card-header 
      (badge-image badge)      
      (div "Badge: " (badge-name badge)))
    (card-body
      (badge-description badge))
    (card-footer
     (earners-list badge))))

(define (earners-list badge)
  (define people (badge->earners badge))

  (div
    "Earned by: "
    (map person-chip people)))


(define (badge-image badge)
  (local-require "./static.rkt")
  (img src: "/badges/test.png" ))

