

(mult 3 4)

(defun mult (first second)
  "multiple the two numbers"
  (cond
   ((= second 0) 0)
   (t (+ first (mult first (1- second))))))
