#lang racket 

;Eliminate consecutive duplicates of list elements

(define (compress lst)
  (cond ((null? (cdr lst))
         lst)
        ((= (car lst) (cadr lst))
         (compress (cdr lst)))
        (else (cons (car lst)
                    (compress (cdr lst))))))



 (provide compress)