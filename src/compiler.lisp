(defparameter pathnames
  (list "src/package.lisp"
        "src/typedef.lisp"
        "src/curs_variables.lisp"
        "src/curs_attr.lisp"
        "src/curs_color.lisp"
        "src/curs_getch.lisp"
        "src/curs_initscr.lisp"
        "src/curs_inopts.lisp"
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
