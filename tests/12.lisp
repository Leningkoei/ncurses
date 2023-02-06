;;;; (require :ncurses)

(defpackage :menu
  (:use :common-lisp)
  (:export
   :Menu-bar-item-option-list-item
   :Menu-bar-item-option-list
   :combine-items
   :Menu-bar-item
   :Menu-bar
   :combine-items
   :Menu
   ))
(in-package :menu)

(defclass Menu-bar-item-option-list-item ()
  ((text :documentation ""
         :initarg :text
         :reader text))
  (:documentation ""))
(defparameter Menu-bar-item-option-list-item 'menu-bar-item-option-list-item)

(defclass Menu-bar-item-option-list ()
  ((window :documentation ""
           :initarg :window
           :reader window)
   (items :documentation ""
          :initarg :items
          :reader items))
  (:documentation ""))
(defparameter Menu-bar-item-option-list 'menu-bar-item-option-list)
(defmethod combine-items (&rest items)
  (apply #'list items))
(defmethod initialize-menu-bar-item-option-list-window
    ((option-list Menu-bar-item-option-list) window)
  (setf (slot-value option-list 'window) window))
(defmethod launch ((option-list Menu-bar-item-option-list) window)
  (setf window (window option-list))
  (ncurses:keypad window 't)
  (ncurses:box window 0 0)
  (flet
      ((get-choice (previous-choice character)
         (let ((choice-count (length (items option-list))))
           (flet
               ((choose-previous-item (previous-choice)
                  (if (<= previous-choice 0)
                      (- choice-count 1)
                      (- previous-choice 1)))
                (choose-next-item (previous-choice)
                  (if (>= previous-choice (- choice-count 1))
                      0
                      (+ previous-choice 1))))
             (cond
               ((= character ncurses:+key-up+)
                (choose-previous-item previous-choice))
               ((= character ncurses:+key-down+)
                (choose-next-item previous-choice))
               ('t previous-choice)))))
       (draw (choice)
         (loop
           for item in (items option-list)
           for index = 0 then (+ index 1)
           do (progn
                (ncurses:mvwprintw window (+ 1 index) 1 (text item))
                (ncurses:mvwchgat
                 window (+ index 1)
                 1 (- (cdr (ncurses:getmaxyx window)) 2)
                 (if (= index choice) ncurses:+a-reverse+ ncurses:+a-normal+)
                 0 nil)))))
    (loop
      for character = ncurses:+empty-key+
        then (ncurses:wgetch window)
      for choice = 0
        then (get-choice choice character)
      when (= character (char-code #\q))
        do (progn
             (ncurses:wclear window)
             (ncurses:wrefresh window)
             (return 't))
      do (draw choice))))

(defclass Menu-bar-item ()
  ((text :documentation ""
         :initarg :text
         :reader text)
   (trigger :documentation ""
            :initarg :trigger
            :reader trigger)
   (start-x :documentation ""
            :reader start-x)
   (option-list :documentation ""
                :initarg :option-list
                :reader option-list))
  (:documentation ""))
(defparameter Menu-bar-item 'menu-bar-item)
(defmethod initialize-start-x ((item Menu-bar-item) start-x)
  (setf (slot-value item 'start-x) start-x))

(defclass Menu-bar ()
  ((items :documentation ""
          :initarg :items
          :reader items))
  (:documentation ""))
(defparameter Menu-bar 'menu-bar)
(defmethod combine-items (&rest items)
  (apply #'list items))
(defmethod initialize-instance :after ((menu-bar Menu-bar) &key)
  ""
  (flet
      ((initialize-item-start-x-s ()
         ""
         (loop
           for item in (items menu-bar)
           for previous-item
             in (apply #'combine-items nil (items menu-bar))
           with first-space = 2
           with space = 1
           for x = first-space
             then (+ x (length (text previous-item)) space)
           do (initialize-start-x item x))))
    (initialize-item-start-x-s)))
(defmethod launch ((menu-bar Menu-bar) window)
  (labels
      ((draw (choice)
         ""
         (loop for item in (items menu-bar)
               do (progn
                    (when (equal choice item)
                      (ncurses:wattron window ncurses:+a-standout+))
                    (ncurses:mvwprintw window 0 (start-x item) (text item))
                    (when (equal choice item)
                      (ncurses:wattroff window ncurses:+a-standout+))
                    )
               finally
                  (when (and choice (items (option-list choice)))
                    (ncurses:wrefresh window)
                    (launch (option-list choice) window)
                    (draw nil))))
       (get-choice (trigger)
         (loop
           for item in (items menu-bar)
           when (= trigger (trigger item))
             do (return item))))
    (loop
      for trigger = ncurses:+empty-key+
        then (ncurses:wgetch window)
      for choice = nil
        then (get-choice trigger)
      when (= trigger (char-code #\q))
        do (return 't)
      do (draw choice))))

(defclass Menu ()
  ((window :documentation ""
           :initarg :window
           :reader window)
   (menu-bar :documentation ""
             :initarg :menu-bar
             :reader menu-bar))
  (:documentation ""))
(defparameter Menu 'menu)
(defmethod initialize-instance :after ((menu Menu) &key)
  ""
  (flet
      ((initialize-menu-bar-item-option-list-s-window ()
         (let*
             ((window (window menu))
              (yx-begin-pair (ncurses:getbegyx window))
              (yx-max-pair (ncurses:getmaxyx window))
              (x-begin (cdr yx-begin-pair))
              (x-max (cdr yx-max-pair))
              (height 7)
              (width (- x-max x-begin 2)))
           (let ((window (ncurses:derwin window height width 1 1)))
             (loop
               for menu-bar-item in (items (menu-bar menu))
               do (initialize-menu-bar-item-option-list-window
                   (option-list menu-bar-item) window))))))
    (initialize-menu-bar-item-option-list-s-window))
  (launch (menu-bar menu) (window menu)))
(in-package :common-lisp-user)

(defun main ()
  
  (ncurses:initscr)
  (ncurses:noecho)
  (ncurses:start-color)
  (ncurses:curs-set 0)
  
  (let* ((file-option-list-items
           (menu:combine-items
            (make-instance menu:Menu-bar-item-option-list-item :text "New")
            (make-instance menu:Menu-bar-item-option-list-item :text "Open")
            (make-instance menu:Menu-bar-item-option-list-item :text "Save")
            (make-instance menu:Menu-bar-item-option-list-item :text "Exit")))
         (edit-option-list-items
           (menu:combine-items
            (make-instance menu:Menu-bar-item-option-list-item :text "Copy")
            (make-instance menu:Menu-bar-item-option-list-item :text "Cut")
            (make-instance menu:Menu-bar-item-option-list-item :text "Paste")))
         (options-option-list-items
           (menu:combine-items
            (make-instance menu:Menu-bar-item-option-list-item :text "Sidebar")
            (make-instance menu:Menu-bar-item-option-list-item :text "Terminal")))
         (view-option-list-items nil)

         (file-option-list
           (make-instance
            menu:Menu-bar-item-option-list
            :window (ncurses:get-stdscr)
            :items file-option-list-items))
         (edit-option-list
           (make-instance
            menu:Menu-bar-item-option-list
            :window (ncurses:get-stdscr)
            :items edit-option-list-items))
         (options-option-list
           (make-instance
            menu:Menu-bar-item-option-list
            :window (ncurses:get-stdscr)
            :items options-option-list-items))
         (view-option-list
           (make-instance
            menu:Menu-bar-item-option-list
            :window (ncurses:get-stdscr)
            :items view-option-list-items))
         
         (menu-bar-items
           (menu:combine-items
            (make-instance menu:Menu-bar-item
             :text "File" :trigger (char-code #\f)
             :option-list file-option-list)
            (make-instance
             menu:Menu-bar-item
             :text "Edit" :trigger (char-code #\e)
             :option-list edit-option-list)
            (make-instance
             menu:Menu-bar-item
             :text "Options" :trigger (char-code #\o)
             :option-list options-option-list)
            (make-instance
             menu:Menu-bar-item
             :text "View" :trigger (char-code #\v)
             :option-list view-option-list)))

         (menu-bar (make-instance menu:Menu-bar :items menu-bar-items))
         
         (yx-begin-pair (ncurses:getbegyx (ncurses:get-stdscr)))
         (yx-max-pair (ncurses:getmaxyx (ncurses:get-stdscr)))
         (y-begin (car yx-begin-pair))
         (x-begin (cdr yx-begin-pair))
         (y-max (car yx-max-pair))
         (x-max (cdr yx-max-pair))
         (height (floor (/ (- y-max y-begin) 2)))
         (width (floor (/ (- x-max x-begin) 2)))
         (window
           (ncurses:newwin
            height width
            (+ y-begin (floor (/ height 2)))
            (+ x-begin (floor (/ width 2))))))

    (ncurses:box window 0 0)
    (ncurses:refresh)
    (ncurses:wrefresh window)

    (make-instance
     menu:Menu
     :window window
     :menu-bar menu-bar))
            
  (ncurses:printw "Press any key to exit.")
  (ncurses:getch)
  (ncurses:endwin))
