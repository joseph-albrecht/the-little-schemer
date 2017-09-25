

(sub 3 1)
(sub 300 100)


(defun sub (first second)
  "Subtract the second number from the first number"
  (cond
   ((= second 0) first)
   (t (1- (sub first (1- second))))))
