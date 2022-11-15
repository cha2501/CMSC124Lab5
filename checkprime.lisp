(defun generateprime(n)
    (setq k 2)
    (setq a n)
    (setq x 0)

    (format t "~%Prime Numbers from 1 to 1000: ~%")
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
        (when (= n 1)
            (terpri)
            (format t "Total Number of Prime Numbers: ")(return a))
    )
)

(generateprime 1000)
