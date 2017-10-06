; CS396 Homework 1: Question 2
; Function that returns the reverse order of a list
#lang racket
(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1(list 2 3 0) (list (list 4 5 ) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (reverse-list lst)
  (cond
    ; base case: return the list of
    [(null? lst) lst]
    ; otherwise proceed through the rest of the list
    [else (append (reverse-list (cdr lst)) (list (car lst)))]
  )
)
(reverse-list lst1 )
(reverse-list lst2 )
(reverse-list lst3 )