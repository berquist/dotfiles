(defun eshell/touch (path)
  "Update PATH last modification date or create if it does not exist."
  ;; Requires f.el.  For now, this is copied from `f-touch'.
  (f--destructive path
    (if (file-regular-p path)
        (set-file-times path)
      (f-write-bytes "" path))))


(defun eshell--parse-count-and-files (args &optional default-count)
  "Parse arguments of the form useful for head and tail."
  (let ((num (or default-count 10))  ; default number of lines
        (files '()))                 ; list of filenames (nil = stdin)
    (while args
      (let ((arg (pop args)))
        (cond
         ;; "-N" (shorthand)
         ((equal (type-of arg) 'integer)
          (when (< arg 0)
            (setq num (abs arg))))
         ;; "-n N"
         ((equal arg "-n")
          (setq num (pop args)))
         ;; "-nN"
         ((string-match-p "^-n[0-9]+$" arg)
          (setq num (string-to-number (substring arg 2))))
         ;; any other token is a file name
         (t (push arg files)))))
    (cons num (nreverse files))))


(defun eshell--get-buffer-from-spec (spec)
  "Return a temp buffer containing data from SPEC.

SPEC is either a filename (string) or nil, meaning read from the current
pipeline/stdin.  Create a temporary buffer, insert the data, then return
the buffer object."
  (let ((buf (generate-new-buffer " *eshell-temp*")))
    (with-current-buffer buf
      (if spec
          (insert-file-contents spec)
        (insert (or (eshell-get-input) "")))
      (goto-char (point-min)))
    buf))


(defun eshell/head (&rest args)
  "Emulate the Unix `head` command.

ARGS is a list of strings as entered on the Eshell command line.
Supported forms:

  head              -> first 10 lines of stdin
  head FILE...      -> first 10 lines of each FILE
  head -n N FILE... -> first N lines of each FILE
  head -N FILE...   -> shorthand for '-n N'.

If no file is supplied the function reads from the current pipeline
using `eshell-get-input'."
  (let* ((parsed (eshell--parse-count-and-files args))
         (num (car parsed))
         (files (cdr parsed)))
    ;; No explicit file -> operate on stdin
    (unless files (push nil files))
    (mapconcat
     #'identity
     (nreverse
      (mapcar
       (lambda (file)
         (with-temp-buffer
           ;; Load data: either a file or the pipeline input
           (if file
               (insert-file-contents file)
             (insert (or (eshell-get-input) "")))   ; stdin
           (goto-char (point-min))

           ;; Collect lines
           (let ((out (make-string 0 0)))
             (dotimes (_i num)
               (unless (eobp)
                 (let ((line (buffer-substring (line-beginning-position)
                                               (line-end-position))))
                   (setq out (concat out line "\n")))
                 (forward-line 1)))
             out)))
       files))
     "")))


(defun eshell/head (&rest args)
  "Emulate the Unix `head` command.

ARGS is a list of strings as entered on the Eshell command line.
Supported forms:

  head              -> first 10 lines of stdin
  head FILE...      -> first 10 lines of each FILE
  head -n N FILE... -> first N lines of each FILE
  head -N FILE...   -> shorthand for '-n N'.

If no file is supplied the function reads from the current pipeline
using `eshell-get-input'."
  (let* ((parsed (eshell--parse-count-and-files args))
         (num (car parsed))
         (files (cdr parsed)))
    ;; No explicit file -> operate on stdin
    (unless files (push nil files))
    (mapconcat
     #'identity
     (mapcar
      (lambda (file)
        (with-current-buffer (eshell--get-buffer-from-spec)
          (let ((out (make-string 0 0)))
            (dotimes (_i num)
              (unless (eobp)
                (let ((line (buffer-substring (line-beginning-position)
                                              (line-end-position))))
                  (setq out (concat out line "\n")))
                (forward-line 1)))
            out)))
      files)
     "")))


(defun eshell/tail (&rest args)
  "Emulate the Unix `tail` command.'"
  (let* ((parsed (eshell--parse-count-and-files args))
         (num (car parsed))
         (files (cdr parsed)))
    ;; No explicit file -> operate on stdin
    (unless files (push nil files))
    (mapconcat
     #'identity
     (mapcar
      (lambda (file)
        (with-current-buffer (eshell--get-buffer-from-spec sp))))
     "")))
