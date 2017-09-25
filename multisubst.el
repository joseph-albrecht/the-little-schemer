(multisubst 'best 'worst '(I am the worst worst worst))


(defun multisubst (new old lat)
  "Replace all instances of old in lat with new"
  (cond
   ((null lat) ())
   ((equal old (car lat)) (cons new (multisubst new old (cdr lat))))
   (t (cons (car lat) (multisubst new old (cdr lat))))))
