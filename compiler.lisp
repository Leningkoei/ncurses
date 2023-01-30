(defparameter pathnames
  (list "src/package.lisp"
        "src/typedef.lisp"
        "src/curs/variables.lisp"
        "src/curs/addch.lisp"
        "src/curs/attr.lisp"
        "src/curs/border.lisp"
        "src/curs/color.lisp"
        "src/curs/getch.lisp"
        "src/curs/getyx.lisp"
        "src/curs/initscr.lisp"
        "src/curs/inopts.lisp"
        "src/curs/move.lisp"
        "src/curs/printw.lisp"
        "src/curs/refresh.lisp"
        "src/curs/window.lisp"
        ))

(defun combine (target &rest pathnames)
  (with-open-file (out target :direction :output :if-exists :supersede)
    (dolist (pathname pathnames)
      (with-open-file (in pathname :direction :input)
        (loop with buffer = (make-array 4096 :element-type 'character)
              for length = (read-sequence buffer in)
              while (> length 0)
              do (write-sequence buffer out :end length))))))

(defun run-compiler (combined-output compiled-output)
  (apply #'combine combined-output pathnames)
  (compile-file combined-output :output-file compiled-output))
