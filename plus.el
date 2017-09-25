(plus 3 4)
(plus 100 321)



;;attemp one
;;computes addition only using 1+ 1- and eq to 0
;;searched for correct after (plus 3 4) worked and (plus 100 321) gave me the error max-elisp-eval-depth
(defun plus (first second)
  (cond
   ((= first 0)
    (cond
     ((= second 0) 0)
     (t (1+ (plus first (1- second))))))
   (t (1+ (plus (1- first) second)))))


;;answer from the book
(defun plus (first second)
  (cond
   ((= second 0) first)
   (t (1+ (plus first (1- second))))))
