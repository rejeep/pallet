(require 'f)

(defvar pallet-support-path
  (f-dirname load-file-name))

(defvar pallet-features-path
  (f-parent pallet-support-path))

(defvar pallet-root-path
  (f-parent pallet-features-path))

(add-to-list 'load-path pallet-root-path)

(require 'pallet)
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
