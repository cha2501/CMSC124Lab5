(defun checkgreatestnum (n1 n2 n3)
    (setq x 0)          ;temporary value storing the highest number

    (format t "~%The greatest number is: ")

    (if (>= n1 n2)      ;compares the first two values
        (setq x n1)     ;stores n1 value to x if n1 is higher; otherwise,
        (setq x n2))    ;n2 is stored

    (if (< x n3)        ;to determine the final evaluation, x is compared to n3
        (setq x n3)
        (setq x x))    ;if n3 is the highest
)

(checkgreatestnum 43 6 2)
