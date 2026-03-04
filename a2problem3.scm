
; Selection Sort
; 3. delete-elem, deletes first element from list of occurence elem


; delete-elem
(define (delete-elem elem lis)
  (cond
    ((null? lis) '() )
    ((= (car lis) elem) (cdr lis) )
    (else (cons (car lis) (delete-elem elem (cdr lis))))
  )
)

; select-min
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


; selection-sort
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

;(delete-elem 0 '(1 2 3 4))

;(select-min '(7 3 1 5 9 3))

;(delete-elem 3 '(1 2 3 4 3 3))


