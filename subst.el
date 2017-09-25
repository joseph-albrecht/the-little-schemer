
;; some test calls
(subst 'joey 'bob '(my name is bob))
(subst 'schemer 'memer '(the little memer))


(defun subst (new old lat)
  "Replace the first instance of old in lat with new"
  (cond
   ((null lat) ())
   ((equal old (car lat)) (cons new (cdr lat)))
   (t (cons (car lat) (subst new old (cdr lat))))))
