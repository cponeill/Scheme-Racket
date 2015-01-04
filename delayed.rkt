#lang racket
(provide (all-defined-out))

; normal version of a factorial function.
(define (factorial-normal xs)
  (if (= xs 0)
      1
      (* xs (factorial-normal (- xs 1)))))

; bad version of a factorial function. This version will never stop running.
(define (bad e1 e2 e3)
  (if e1 e2 e3))

(define (factorial-bad xs)
  (bad (= xs 0)
       1
       (* xs (factorial-bad (- xs 1)))))

; better version of a factorial function using Thunks delay.
(define (my-if e1 e2 e3)
  (if e1 (e2) (e3))) ; (e)

(define (factorial-okay xs)
  (my-if (= xs 0)
         (lambda () 1)
         (lambda () (* xs (factorial-okay (- xs 1))))))

         

  