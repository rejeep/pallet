;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(setq package-user-dir (f-join pallet-features-path "tmp" "elpa"))
(setq debug-on-error t)

(Given "I have required package.el"
       (lambda ()
         (require 'package)))

(And "^I have added \"\\([^\"]+\\)\" \"\\([^\"]+\\)\" as an archive$"
  (lambda (name location)
    (message invocation-directory)
    (message invocation-name)
    (setq package-archives `((,name . ,location)))
     (package-refresh-contents)
     ))

(And "I have installed packages:"
  (lambda (packages-table)
    (let ((packages (cdr packages-table)))
      (dolist (package packages)
        ;; (package-install (intern (car package)))
        ))))

(And "I have run package-initialize"
  (lambda ()
    (package-initialize)
    ))

(When "I run pallet-init"
  (lambda ()
    (pallet-init)
    ))
