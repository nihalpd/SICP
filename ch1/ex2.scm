; SICP
; Chapter 1
; Exercise 2
; Translate the following expression into prefix notation
; (5 + 4 + (2 - (3 - (6 + 4/5))))/(3*(6-2)(2-7))

; Simplify top
; (5 + 4 + (2 - (3 - (+ 6 0.8))))
 (+ 4 5 (- 2 (- 3 (+ 6 0.8))))

; Simplify bottom
(* 3 (- 6 2) (- 2 7))
