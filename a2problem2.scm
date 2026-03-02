


; 2.

; a) make-linear, takes a and b, returns anonymous f(x) = a*x + y



(define (make-linear a b)
  (lambda(x) (+ (* a x) b) )
)


; Test
;(define f (make-linear 2 1))
;(f 5)


; b) add-linear, takes in anonymous linear functions f and g, returns new anonymous function h(x) = f(x) + g(x)


(define (add-linear f g) 
  (lambda (x) (+ (f x) (g x)) )
)

; Test
; ((add-linear f g) 5)


; c) make-linear-list


(define (make-linear-list a b)
  (lambda(lis) (map (make-linear a b) lis) )
)

; Test
; (define h (make-linear-list 2 1))
; (h '(1 2 3) )






