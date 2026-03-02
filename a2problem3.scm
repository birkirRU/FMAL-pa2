
; Selection Sort
; 3. delete-elem, deletes first element from list of occurence elem



(define (delete-elem elem lis)
  (cond
    ((null? lis) '() )
    ((= (car lis) elem) (cdr lis) )
    (else (cons (car lis) (delete-elem elem (cdr lis))))
  )
)

(delete-elem 0 '(1 2 3 4))

;(delete-elem 3 '(1 2 3 4 3 3))


