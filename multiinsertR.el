
(multiinsertR 'right 'left '(left left left right left))


(defun multiinsertR (new old lat)
  "insert new to the right of every old in lat"
  (cond
   ((null lat) ())
   ((equal old (car lat)) (cons old (cons new (multiinsertR new old (cdr lat)))))
   (t (cons (car lat) (multiinsertR new old (cdr lat))))))
