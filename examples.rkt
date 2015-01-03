#lang racket
(provide (all-defined-out))

; [second big difference from ML | ocaML | Haskell is Dynamic Typing!!!
; dynamic typing: can use values of any type anywhere
;   e.g., a list that holds number or other lists -- with
;    either lists or number nested arbitrarily deeply

(define xs (list 4 5 6))
(define ys (list (list 4 (list 5 0)) 6 7 (list 8) 9 2 3 (list 0 1)))
(define zs (list #f "hi" 14))

(define (sum1 xs)
  (if (null? xs)
      0
      (if (number? (car xs))
          (+ (car xs) (sum1 (cdr xs)))
          (+ (sum1 (car xs)) (sum1 xs)))))

(define (sum2 xs)
  (if (null? xs)
      0
      (if (number? (car xs))
          (+ (car xs) (sum2 (cdr xs)))
          (if (list? (car xs))
              (+ (sum2 (car xs)) (sum2 (cdr xs)))
              (sum2 (cdr xs))))))

; using "cond" in place of if-then-else-than
(define (sum3 xs)
  (cond [(null? xs) 0]
        [(number? (car xs)) (+ (car xs) (sum3 (cdr xs)))]
        [#t (+ (sum3 (car xs)) (sum3 (cdr xs)))]))

(define (sum4 xs)
  (cond [(null? xs) 0]
        [(number? (car xs)) (+ (car xs) (sum4 (cdr xs)))]
        [(list? (car xs) (+ (sum4 (car xs)) (sum4 (cdr xs))))]
        [#t (sum4 (cdr xs))]))

; using "let" expressions
; let
(define (double1 xs)
  (let ([xs (+ xs 3)]
        [ys (+ xs 2)]) ; ys is bound to xs before the let expression
    (+ xs ys)))
; let*
(define (double2 xs)
  (let* ([xs (+ xs 3)]
         [ys (+ xs 2)]) ; ys is bound to xs in the environment
    (+ xs ys )))

  