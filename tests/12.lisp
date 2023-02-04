;;;; (require :ncurses)

(defpackage :menu
  (:use common-lisp)
  (:export
   :Menu-item
   :Menu
   :draw
   ))
(in-package :menu)

(defclass Menu-item ()
  ((start-x :documentation ""
            :accessor      :start-x)
            
   (text    :documentation ""
            :initarg       :text
            :accessor      :text)
   (trigger :documentation ""
            :initarg       :trigger
            :accessor      :trigger))
  (:documentation ""))
(defparameter Menu-item 'menu-item)

(defclass Menu ()
  ((window :documentation ""
           :initarg       :window
           :accessor      :window)
   (items  :documentation ""
           :initarg       :items
           :accessor      :items))
  (:documentation ""))
(defparameter Menu 'menu)
;; private
(defgeneric init-items-start-x (menu)
  (:documentation ""))
;; public
(defgeneric draw (menu)
  (:documentation ""))
(defmethod initialize-instance :after ((menu Menu) &key)
  ""
  (init-items-start-x menu))
;; implement
(defmethod init-items-start-x ((menu Menu))
  ""
  (with-slots (items) menu
    (loop for item in items
          and pre-item in (cons nil items)
          with init-space = 2
          with space = 1
          for x = init-space
            then (with-slots (text) pre-item
                   (print (length text))
                   (+ x (length text) space))
          do (with-accessors ((start-x :start-x)) item
               (setf start-x x)))))
(defmethod draw ((menu Menu))
  ""
  (with-slots (items window) menu
    (loop for item in items
          do (with-slots (start-x text) item
               (ncurses:mvwprintw window 0 start-x text)))))

(in-package :common-lisp-user)
(defun main ()

  (ncurses:initscr)
  (ncurses:noecho)
  (ncurses:curs-set 0)

  (let ((yx-max-pair (ncurses:getmaxyx (ncurses:get-stdscr))))
    (let ((y-max (car yx-max-pair))
          (x-max (cdr yx-max-pair)))
      (let ((window
              (ncurses:newwin
               (floor (/ y-max 2))
               (floor (/ x-max 2))
               (floor (/ y-max 4))
               (floor (/ x-max 4)))))
        (ncurses:refresh)
        (ncurses:box window 0 0)

        (let ((menu-items
                (list
                 (make-instance menu:Menu-item :text "File"    :trigger #\f)
                 (make-instance menu:Menu-item :text "Edit"    :trigger #\e)
                 (make-instance menu:Menu-item :text "Options" :trigger #\o))))
          (let ((menu
                  (make-instance menu:Menu :window window :items menu-items)))

            (menu:draw menu)))

        ;; (ncurses:mvwprintw window 0 2 "File")
        ;; (ncurses:mvwprintw window 0 7 "Edit")
        ;; (ncurses:mvwprintw window 0 12 "Options")

        ;; (loop
        ;;   for character = -1
        ;;     then (ncurses:wgetch window)
        ;;   do (cond
        ;;        ((= character (char-code #\q))
        ;;         (return 't))
        ;;        ((= character (char-code #\f))
        ;;         (ncurses:wattron window ncurses:+a-standout+)
        ;;         (ncurses:mvwprintw window 0 2 "File")
        ;;         (ncurses:wattroff window ncurses:+a-standout+))
        ;;        ((= character (char-code #\e))
        ;;         (ncurses:wattron window ncurses:+a-standout+)
        ;;         (ncurses:mvwprintw window 0 7 "Edit")
        ;;         (ncurses:wattroff window ncurses:+a-standout+))
        ;;        ((= character (char-code #\o))
        ;;         (ncurses:wattron window ncurses:+a-standout+)
        ;;         (ncurses:mvwprintw window 0 12 "Options")
        ;;         (ncurses:wattroff window ncurses:+a-standout+))
        ;;        ('t (ncurses:mvwprintw window 0 2 "File")
        ;;            (ncurses:mvwprintw window 0 7 "Edit")
        ;;            (ncurses:mvwprintw window 0 12 "Options"))))

        (ncurses:wrefresh window))))

  (ncurses:getch)
  (ncurses:endwin))
