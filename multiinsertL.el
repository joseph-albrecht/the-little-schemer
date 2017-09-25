
(multiinsertL 'e 'm '(r m m b e r))


(defun multiinsertL (new old lat)
  "Insert every instance new to the left of old"
  (cond
   ((null lat) ())
   ((equal old (car lat)) (cons new (cons old (multiinsertL new old (cdr lat)))))
   (t (cons (car lat) (multiinsertL new old (cdr lat))))))
