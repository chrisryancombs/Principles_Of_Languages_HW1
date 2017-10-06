; CS396 Homework 1: Question 5
; Function that takes a list and moves all atoms to the top level
#lang racket
(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1(list 2 3 0) (list (list 4 5 ) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (steamroller lst)
  (cond
    ; base case: stop if you reach ever reach an end of a list
    [(null? lst) lst]
    ; if your first element is ever a list, there is an issue that needs to be steamrolled
    [(list? (car lst)) (append (steamroller (car lst)) (steamroller (cdr lst)))]
    ; otherwise proceed through the rest of the list
    [else (cons (car lst) (steamroller (cdr lst)))]
  )
)
(display(steamroller lst1))
(display(steamroller lst2))
(display(steamroller lst3))