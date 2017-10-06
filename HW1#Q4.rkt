; CS396 Homework 1: Question 4
; Function that returns true if an item is in the list
#lang racket
(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1(list 2 3 0) (list (list 4 5 ) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (deep-member? lst atom)
  (cond
    ; base case: stop if you reach the end of a list, return true if you found a match
    [(null? lst) #f]
    [(equal? (car lst) atom) #t]
    ; if your first element is ever a list, search it as well as the second element
    [(list? (car lst)) (or (deep-member? (car lst) atom) (deep-member? (cdr lst) atom))]
    ; otherwise proceed through the rest of the list
    [else (deep-member? (cdr lst) atom)]
  )
)
(deep-member? lst1 2)
(deep-member? lst2 4)
(deep-member? lst3 'Peach)
(deep-member? lst3 'Strawberry)