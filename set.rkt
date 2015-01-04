#lang racket
(provide (all-defined-out))

; set with mutation

(define b 3)
(define f (lambda (x) (* 1 (+ x b))))
(define c (+ b 4)) ; 7
(set! b 5) ; set var b = 5
(define z (f 4)) ; 9
(define w c) ; 7

; more set!
; call b "(define b 3)" ; set var b = 3
(define fx
  (let ([b b] ; copy b to b
        [+ +] ; in racket, set! can not be set on + primitives
        [* *])
    (lambda (x) (* 1 (+ x b)))))
    