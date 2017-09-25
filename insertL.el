
(insertL 'forgot 'to '(you to add this word))

(insertL 'cool 'program '(this is a program))

(defun insertL (new old lat)
  "Inserts the new atom to the left of the old atom in the lat"
  (cond
   ((null lat) ())
   ((equal old (car lat)) (cons new lat))
   (t (cons (car lat) (insertL new old (cdr lat))))))
