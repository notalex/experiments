(defvar *db* nil)
(defun make-cd(title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(defun add-record(cd)
  (push cd *db*))

(defun prompt-read(prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-for-cd()
  (make-cd
    (prompt-read "Title")
    (prompt-read "Artist")
    (parse-integer (prompt-read "Rating"))
    (prompt-read "Ripped [y/n]")
))

(defun dump-db()
  (dolist (cd *db*)
    (format *standard-output* "~{~a:~10t~a~%~}~%" cd)))

(dump-db)
