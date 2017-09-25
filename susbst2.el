
(subst2 'first 'second 'third '(third second first))
(subst2 'my 'me 'mine '(my me mine))


(defun subst2 (new o1 o2 lat)
  "Replaces the first occurence of o1 or o2 with new"
  (cond
   ((null lat) ())
   ((or (equal o1 (car lat))(equal o2 (car lat))) (cons new (cdr lat)))
   (t (cons (car lat) (subst2 new o1 o2 (cdr lat))))))
