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
