;;;; (require :ncurses)

(in-package :common-lisp-user)


(defpackage :player
  (:use :common-lisp)
  (:export
   :player
   :make-instance
   :get-move
   :display
   ))
(in-package :player)

(defclass Player ()
  ((window      :initarg       :window
                :reader        :window
                :documentation "")
   (y           :initarg       :y
                :accessor      :y
                :documentation "")
   (x           :initarg       :x
                :accessor      :x
                :documentation "")
   (character   :initarg       :character
                :accessor      :character
                :documentation "")
   (y-max       :reader        :y-max
                :documentation "")
   (x-max       :reader        :x-max
                :documentation ""))
  (:documentation ""))
(defmethod initialize-instance :after ((player Player) &key)
  ""
  (with-slots (window) player
    (let ((yx-max-pair (ncurses:getmaxyx window)))
      (let ((y-max (car yx-max-pair))
            (x-max (cdr yx-max-pair)))
        (setf (slot-value player 'y-max) y-max)
        (setf (slot-value player 'x-max) x-max)
        'done))))

;; private
(defmethod move-up ((player Player))
  ""
  (with-slots (window x) player
    (with-accessors ((y :y)) player
      (ncurses:mvwaddch window y x (char-int #\ ))
      (when (> y 1)
        (setf y (- y 1))))))
(defmethod move-down ((player Player))
  ""
  (with-slots (y-max window x) player
    (with-accessors ((y :y)) player
      (ncurses:mvwaddch window y x (char-int #\ ))
      (when (< y (- y-max 2))
        (setf y (+ y 1))))))
(defmethod move-left ((player Player))
  ""
  (with-slots (window y) player
    (with-accessors ((x :x)) player
      (ncurses:mvwaddch window y x (char-int #\ ))
      (when (> x 1)
        (setf x (- x 1))))))
(defmethod move-right ((player Player))
  ""
  (with-slots (x-max window y) player
    (with-accessors ((x :x)) player
      (ncurses:mvwaddch window y x (char-int #\ ))
      (when (< x (- x-max 2))
        (setf x (+ x 1))))))

;; public
(defmethod get-move ((player Player))
  ""
  (with-slots (window) player
    (let ((choice (ncurses:wgetch window)))
      (cond
        ((= choice (char-int #\h))
         (move-left player))
        ((= choice (char-int #\j))
         (move-down player))
        ((= choice (char-int #\k))
         (move-up player))
        ((= choice (char-int #\l))
         (move-right player))
        ('t 'do-nothing))
      choice)))
(defmethod display ((player Player))
  ""
  (with-slots (window y x character) player
    (ncurses:mvwaddch window y x character)))


(in-package :common-lisp-user)
(defun main()
  (ncurses:initscr)
  (ncurses:noecho)
  (ncurses:cbreak)

  (let ((yx-max-pair (ncurses:getmaxyx (ncurses:get-stdscr))))
    (let ((y-max (car yx-max-pair))
          (x-max (cdr yx-max-pair)))
      (let ((window
              (ncurses:newwin
               20 50
               (- (floor (/ y-max 2)) 10)
               (- (floor (/ x-max 2)) 25))))
        (ncurses:refresh)
        (ncurses:box window 0 0)
        (ncurses:wrefresh window)
        (ncurses:keypad window 't)

        (let ((player
                (player:make-instance
                 'player:player
                 :window window
                 :y 1 :x 1
                 :character (char-int #\@))))
          ;; (loop for continue? = 't
          ;;         then (progn
          ;;                (player:display player)
          ;;                (player:get-move player))
          ;;       when (not continue?) do (return nil))))))
          (loop for choice = 0
                  then (progn
                         (player:display player)
                         (player:get-move player))
                when (= choice (char-int #\q)) do (return nil))))))

  (ncurses:printw "Press any key to exit.")
  (ncurses:getch)
  (ncurses:endwin))
