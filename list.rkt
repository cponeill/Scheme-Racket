#lang racket

(provide (all-defined-out))

; list processing: null, cons, null?, car, cdr
; we won't be using pattern matching in Racket

; sum all the numbers in a list
(define (sum xs)
  (if (null? xs)
      0
      (+ (car xs) (sum (cdr xs)))))

; append all the numbers in a list
(define (my-append xs ys)
  (if (null? xs)
      ys
      (cons (car xs) (my-append (cdr xs) ys))))
(define append-list
  (my-append
   (list 3 4 5)
   (list 6 7 8)))

; map all the numbers in a list
(define (my-map f xs)
  (if (null? xs)
      null
      (cons (f (car xs))
            (my-map f (cdr xs)))))
(define map-call
  (my-map
   (lambda (x)
     (+ x 2))
   (cons 3 (cons 4 (cons 5 null)))))

