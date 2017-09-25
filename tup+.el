


;;tests
(tup+2 '(1 2 3) '(2 3 4))

;;version that can't add different sized lines
(defun tup+ (tup1 tup2)
  "evaluates the numbers in tup1 to tup2"
  (cond
   ((and (null tup1) (null tup2))
    ())
   (t (cons
       (+ (car tup1) (car tup2))
       (tup+ (cdr tup1) (cdr tup2))))))


;;tests
(tup2+ '(1) '(2 3 4)) 
(tup2+ '(1) '(2)) 

;;version that can add different sized lines
(defun tup+better(tup1 tup2)
  "evaluates the numbers in tup1 to tup2"
  (cond
   ((and (null tup1) (null tup2))
    '())
   ((and (null tup1) (not (null tup2)))
    tup2)
   ((and (null tup2) (not (null tup1)))
    tup1)
   (t (cons
       (+ (car tup1) (car tup2))
       (tup+better (cdr tup1) (cdr tup2)))))) 



;;tests
(not-test '(4 5 6)) 
(not-test '()) 

;;trying out the 'not' function
(defun not-test (list)
  (cond
   ((not (null list))
    list)
   ((null list)
    0))) 


;;tests
(opposite-null '() '(1))

;;evaluates to 2 if first is null, second is not null
;;evaluates to 1 if first is not null, second is null
;;evaluates to 0 if both null

(defun opposite-null (tup1 tup2)
  (cond
   ((and (null tup1) (not (null tup2)))
    2)
   ((and (null tup2) (not (null tup1)))
    1)
   ((and (null tup1) (null tup2)))
   (t 3))) 
