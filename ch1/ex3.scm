; SICP
; Chapter 1
; Exercise 3
; Given a list of three numbers print the sum of the squares of
; the two greater numbers.

(define (sum-of-squares a b) 
  (+ (* a a) (* b b))
  )

(define (two-greater-squares a b c)
  (cond 
    ((and (<= a b) (<= a c))
      (sum-of-squares b c)
    )
    ((and (<= b a) (<= b c))
      (sum-of-squares a c)
    )
    ((and (<= c b) (<= c a))
      (sum-of-squares a b)
    )
  )
)
