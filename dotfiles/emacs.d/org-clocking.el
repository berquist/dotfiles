;; -*- lexical-binding: t; -*-

;; transform this
'((2 "not-food")
  (1 "fish")
  (1 "fruit")
  (2 "citrus")
  (3 "lime")
  (3 "lemon")
  (4 "meyer")
  (3 "orange")
  (2 "cherry")
  (1 "vegetable")
  (1 "legume"))
;; into this
'((
   ("not-food"))
  ("fish")
  ("fruit"
   ("citrus"
    ("lime")
    ("lemon"
     ("meyer"))
    ("orange"))
   ("cherry"))
  ("vegetable")
  ("legume"))

;; (1 "a") -> ("a")
;; (2 "a") -> (("a"))
;; (3 "a") -> ((("a")))

(1 "c") -> ("c")
(2 "b") -> ("c" ("b"))
(3 "a") -> ("c" ("b" ("a")))
(2 "hi") -> ("c" ("b" ("a") "hi"))
(2 "bye")  -> ("c" ("b" ("a") "hi" "bye"))
(1 "hello") -> ("hello")

(1 "c") -> (("c"))
(2 "b") -> (("c" ("b")))
(3 "a") -> (("c" ("b" ("a"))))
(2 "hi") -> (("c" ("b" ("a") "hi")))
(2 "bye") -> (("c" ("b" ("a") "hi" "bye")))
(1 "hello") -> (("c" ("b" ("a") "hi" "bye")) ("hello"))

(setq my-flat-tree
      '((1 "c")
        (2 "b")
        (3 "a")
        (2 "hi")
        (1 "hello")))

(defun flat-to-nested-tree (flat-tree)
  (let ((nested-tree nil))
    (when flat-tree
      (when (not (= (car (nth 0 flat-tree)) 1))
        (error "don't know how to handle first element not 1 yet"))
      (let ((prev-level (car (nth 0 flat-tree))))
        (setq nested-tree (append nested-tree (list (list (cadr (nth 0 flat-tree))))))
        (dolist (idx (number-sequence 1 (1- (length flat-tree))))
          (let ((node (nth idx flat-tree)))
            (when (not (= (length node) 2))
              (error "bad length of node"))
            (let ((this-level (car node))
                  (item (cadr node)))
              ;; If new is same level,
              ;;
              ;; If new is lower level,
              ;;
              ;; If new is higher level,
              ;; (cond (((< prev-level this-level) )
              ;;        ((> prev-level this-level) )
              ;;        (t )))
              (setq nested-tree (append nested-tree (list (list item))))
              (setq prev-level this-level)))
          )))
    nested-tree))

(let* (
       ;; (flat-tree '((1 "<2023-05-30 Tue> 1424 best practices" ("@overhead") nil 884 nil)
       ;;              (2 "note taking review" ("@overhead") nil 79 nil)
       ;;              (2 "blog writing" ("@overhead") nil 736 nil)
       ;;              (1 "<2023-05-31 Wed> penguin huddle" ("@overhead") nil 6 nil)))
       (flat-tree '((2 "not-food")
                    (1 "fish")
                    (1 "fruit")
                    (2 "citrus")
                    (3 "lime")
                    (3 "lemon")
                    (4 "meyer")
                    (3 "orange")
                    (2 "cherry")
                    (1 "vegetable")
                    (1 "legume"))
                  )
       (nnodes (length flat-tree))
       (tree nil)
       )
  (when (> nnodes 0)
    ;; Initialize the tree with the first node.
    (let* ((node (nth 0 flat-tree))
           (level (nth 0 node)))
      
      )
    (dolist (idx (number-sequence 0 (1- (length tree))))
     (let* ((node (nth idx tree))
            (level (nth 0 node))
            (headline (nth 1 node))
            (tags (nth 2 node))
            (timestamp (nth 3 node))
            (time (nth 4 node))
            (properties (nth 5 node)))
       ;; (print (format "%s\n" headline))

       ))  )
  )
