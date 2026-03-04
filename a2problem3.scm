; 3a delete-elem
(define (delete-elem elem lis)
  (cond
    ((null? lis) '() )
    ((= (car lis) elem) (cdr lis) )
    (else (cons (car lis) (delete-elem elem (cdr lis))))
  )
)

; 3b select-min
(define (select-min lis)
  (if (null? (cdr lis))
    (car lis)
    (let ((tail-min (select-min (cdr lis ))))
      (if (< (car lis) tail-min)
        (car lis)
        tail-min
      )
    )
  )
)


; 3c selection-sort
(define (selection-sort lis)
  (cond
    ((null? lis) '())
    (else
      (let ((min (select-min lis)))
        (cons min (selection-sort (delete-elem min lis))
        )
      )
    )
  )
)


; 4 stack 
(define (make-stack stack)
  (lambda (command . args)
    (cond
      ((eq? command 'empty) (null? stack))


      ((eq? command 'top) 
        (if (null? stack)
          'error
          (car stack)))



      ((eq? command 'push) 
        (if (null? args)
           'error
           (begin
            (set! stack (cons (car args) stack))
              (car stack))))



      ((eq? command 'pop) 
        (if (null? stack)
          'error
          (let ((x (car stack)))
            (set! stack (cdr stack))
            x)))



      (else 'error)
)))