;; SICP
;; Chapter 1
;; Ex 8
;; Implement Newton's method for cube roots
;;  (x/(y^2 +2y))/3

(define (cube x) (* x x x))
(define (square x) (* x x))
(define (improve guess x) (/ (+ (/ x (square guess)) (* 2 guess)) 3))
(define (good-enough? guess x) 
  (< (abs (- (cube guess) x)) 0.001))

(define (iter guess x)
  (if (good-enough? guess x)
    guess
    (iter (improve guess x) x)))

(define (cube-root x) 
  (iter 1.0 x)) 
