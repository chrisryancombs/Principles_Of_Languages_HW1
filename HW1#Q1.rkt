; CS396 Homework 1: Question 1
; Function that removes all instances of an item from a list
#lang racket
(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1(list 2 3 0) (list (list 4 5 ) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (deleteall atom lst)
  (cond
    ; base case: stop at empty list
    [(null? lst) lst]
    ; if we found an instance of the item we want gone, return a recurse of everything else
    [(equal? (car lst) atom) (deleteall atom (cdr lst)) ]
    ; otherwise recurse with the verified-legal item
    [else (cons(car lst)(deleteall atom (cdr lst)))]
  )
)
(deleteall 2 lst1 )
(deleteall 2 lst2 )
(deleteall 'Apple lst3 )