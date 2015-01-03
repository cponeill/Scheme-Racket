; Always start with this code
#lang racket

; make our code public
(provide (all-defined-out))

; definitions and variables
(define xs 3) ; val x = 3
(define ys (+ xs 2)) ; + is a function, call it here. 

; cube function
(define cube1
  (lambda (x) ; anonymous function x
    (* x (* x x ))))

(define cube2
  (lambda (x)
    (* x x x)))

(define (cube3 x)
  (* x x x))

(define (pow1 x y)
  (if (= y 0)
      1
      (* x (pow1 x (- y 1)))))

; curried version
(define pow2
  (lambda (x)
    (lambda (y)
      (pow1 x y))))
(define three-to-the (pow2 3))


  
    