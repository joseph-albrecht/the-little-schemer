
(multirember 'oops '(oops i did it again oops))
(multirember 'one '(one two three one one four one))


(defun multirember (to-rem lat)
  "remove all occurences of to-rem"
  (cond
   ((null lat) ())
   ((equal to-rem (car lat)) (multirember to-rem (cdr lat)))
   (t (cons (car lat) (multirember to-rem (cdr lat))))))
