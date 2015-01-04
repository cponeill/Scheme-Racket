#lang racket
(provide (all-defined-out))

; Mutation with Set!

(define pr (cons 1 (cons #t "hi"))); (1, (true, "hi"))
(define lst (cons 1 (cons #t (cons "hi" null))))
(define hi (cdr (cdr pr)))
(define xs (list? (cons 1 (cons 2 null))))

; mcons for Mutable Pairs
(define x (cons 14 null)) ; var x = [14]
(define y x) ; var y = x
(set! x (cons 42 null)) ; set x = [42]
(define mpr1 (cons 1 (cons #t "hi")))
(define mpr2 (mcons 1 (mcons #t "hi")))

; delayed evaluation




