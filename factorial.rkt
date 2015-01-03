#lang racket
(provide (all-defined-out))

(define (fact1 n)
  (if (= n 0)
      1
      (* n (fact (- n 1)))))