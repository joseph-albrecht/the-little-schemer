
(firsts '((hello goodbye) (morning night) (one two)))
(firsts '((1 2) (3 4) (5 6)))




(defun firsts (list-of-lists)
  "Get the first element of each list in a list of lists"
  (cond
   ((null list-of-lists) ())
   (t (cons (car (car list-of-lists)) (firsts (cdr list-of-lists))))))
