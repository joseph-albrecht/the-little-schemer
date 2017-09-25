

(addtup '(5 6 7 8))


(defun addtup (tup)
  "adds all the integers in the tup"
  (cond
   ((null tup) 0)
   (t (+ (car tup) (addtup (cdr tup))))))
