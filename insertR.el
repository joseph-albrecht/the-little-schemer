
(insertR 'nice 'its '(its to see you))

(insertR 'am 'I '(I the best))


(defun insertR (new old lat)
  "Insert new after the first instance of old in the list lat"
  (cond
   ((null lat) '())
   ((equal old (car lat)) (cons old (cons new (cdr lat))))
   (t (cons (car lat) (insertR new old (cdr lat))))))
