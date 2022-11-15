(defun generateprime(n)     ;define generateprime function with paramater accepting any integer values
    (setq k 2)              ;initialize variables to be used  ; k is the program's divisor
    (setq a n)              ;prime number counter
    (setq x 0)              ;flag

    (format t "~%Prime Numbers from 1 to ~a: ~%" n) 
    (terpri)

    (loop 
        (loop
            (setq x (rem n k))
            (setq k (+ k 1))
            (when (or (= k n) (= x 0)) (return x))
        )
        (if (> x 0)
            (format t " ~a ~%" n)
            (setq a (- a 1))
        )
        (setq n (- n 1))
        (setq k 2)
        (setq x 0)
        (setq h n)
        (when (= n 1)
            (terpri)
            (format t "Total Number of Prime Numbers: ")(return a))
    )
)

(generateprime 1000)
