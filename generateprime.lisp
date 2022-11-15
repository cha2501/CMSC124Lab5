(defun generateprime(n)     ;define generateprime function with paramater accepting any integer values
    (setq k 2)              ;initialize variables to be used  ; k is the program's divisor
    (setq a n)              ;prime number counter
    (setq x 0)              ;flag

    (format t "~%Prime Numbers from 1 to ~a: ~%" n) 
    (terpri)

    (loop                                               ;first loop is the number to be divided or the dividend
        (loop                                           ;second loop increments value 2 until n and serves as the operation's divisor
            (setq x (rem n k))                          ; checks remainder of the operation (n rem k = rem)
            (setq k (+ k 1))                            ;increments the divisor until such either one of when conditions is met and returns x
            (when (or (= k n) (= x 0)) (return x))      ;if rem is 0, n is automatically evaluated as a composite number
        )
        (if (> x 0)                 ;prime number when returned x is more than 0
            (format t " ~a ~%" n)
            (setq a (- a 1))        ;prints prime number and updates counter
        )
        (setq n (- n 1))            ;decrements given n by 1 until when condition is met
        (setq k 2)                  ;sets all necesarry variables back to original value
        (setq x 0)
        (setq h n)
        (when (= n 1)               ;1 has been reached; thus, evaluation breaks
            (terpri)
            (format t "Total Number of Prime Numbers: ")(return a))     ;prints counter
    )
)

(generateprime 1000)
