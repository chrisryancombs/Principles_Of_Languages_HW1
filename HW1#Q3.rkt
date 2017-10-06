; CS396 Homework 1: Question 3
; Function that returns the number of zeros in a list
#lang racket
(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1(list 2 3 0) (list (list 4 5 ) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (count-zeros lst)
  (cond
    ; base case: stop if you reach the end of a list, return true if you found a match
    [(null? lst) 0]
    [(equal? (car lst) 0) (+ 1 (count-zeros (cdr lst))) ]
    ; otherwise proceed through the rest of the list
    [else (count-zeros (cdr lst))]
  )
)
(count-zeros lst1 )
(count-zeros lst2 )
(count-zeros lst3 )