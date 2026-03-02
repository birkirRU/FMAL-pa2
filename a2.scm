
; 1.
; a) Countdown

(define (countdown n)
  (if (= n 1) (list 1)
   (cons n (countdown (- n 1)  ) )
  )
)


(countdown 5)


; b) remove_every_second


(define (remove-every-second lis)
  (_res lis #t)
)

(define (_res lis carIsOdd)
  (cond 
    ((null? lis) '() )

    ((eqv? carIsOdd #t) (cons (car lis) (_res (cdr lis) (not carIsOdd) ))  )

    (else 
     (_res (cdr lis) (not carIsOdd) )
    )
  )
)

;(remove-every-second '(a b c d))
(remove-every-second '(a))
;(remove-every-second '())
;(remove-every-second '(a b c))
;(remove-every-second '(a b c d e))


; c) insert-at, return copy of incoming list, with char inserted at index, return unchanged list if index > length(lis) + 1
; may use length function.


(define (insert-at lis index elem)
  (if (> index (+ (length lis) 1 )) lis 
    (_ia lis index elem 1)
  )
)

(define (_ia lis i elem currPos)
  (if (= i currPos) (cons elem lis)
    (cons (car lis) (_ia (cdr lis) i elem (+ 1 currPos)) )
  )
)

(insert-at '(a b c d) 3 'z)


; d) sequence, generates a sequence 1..n, given n >= 1


(define (sequence n)
  (if (< n 1) '()
   (_sequence 1 n)
  )
)

(define (_sequence cur lim)
  (if (> cur lim) '()
   (cons cur (_sequence (+ 1 cur) lim) )
  )
)


(sequence 1)



; e) combine, 


(define (combine fun init lis)
  (cond
    ((null? lis) init)

    ((null? (cdr lis)) (fun init(car lis)) )

    (else (let
            ; Set vars
            (
             (new_init (fun init (car lis)) )
            )
            ; Body
            (combine fun new_init (cdr lis))
          )
    )
  )
)

(combine + 0 '(1 2 3 4 5))
(combine * 1 '(1 3 4 2 5))
(combine max 0 '(1 3 5 2 4))





; Split 



(define (split fun lis) 
  (_split fun lis '() '() )
)

(define (_split fun lis flis tlis) 
  (cond 
    ((null? lis) (list tlis flis) )
    ((eqv? (fun (car lis) ) #t)  (_split fun (cdr lis) flis (cons (car lis) tlis)) )
    (else (_split fun (cdr lis) (cons (car lis) flis) tlis))
  )
)



(split even? '(1 2 3 4 5 6))
(split (lambda(x) (> x 2)) '(1 2 3 4 5 6))

