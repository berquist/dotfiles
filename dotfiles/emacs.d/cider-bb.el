;;; cider-bb.el --- use CIDER with babashka  -*- lexical-binding: t -*-

(defun cider-jack-in-bb ()
  "Start a babashka nREPL server for the current project and connect to it."
  (interactive)
  ;; First try and find an open port, starting at the "default" bb nREPL port
  ;; of 1667.
  (let* ((port 1666)
         (lsof-cmd "lsof -P -i TCP:%d")
         (lsof-output 0))
    (while (zerop lsof-output)
      (setq port (1+ port)
            lsof-output (shell-command (format lsof-cmd port))))
    ;; An open port has been found, start 'bb nrepl-server' and pass it to
    ;; CIDER.
    (let* ((hostname "localhost")
           (project-dir ".")
           (params (list :host hostname
                         :port port
                         :project-dir project-dir))
           (bb-cmd (format "bb nrepl-server %s:%s" hostname port)))
      (nrepl-start-server-process
       project-dir
       bb-cmd
       (lambda (server-buffer)
         (cider-connect-sibling-clj params server-buffer))))))
