(require 'f)

(defvar src-support-path
  (f-dirname load-file-name))

(defvar src-features-path
  (f-parent src-support-path))

(defvar src-root-path
  (f-parent src-features-path))

(add-to-list 'load-path src-root-path)

(require 'src)
(require 'espuds)
(require 'ert)

(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
