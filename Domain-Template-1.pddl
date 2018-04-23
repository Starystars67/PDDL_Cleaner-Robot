;;Domain template 1 for cleaning floor regions
;; A domain file for CMP2020M assignment 2017/2018

;; By Mitch Durso DUR16610086

;; Define the name for this domain (needs to match the domain definition
;; in the problem files)

(define (domain domain-template1)

    ;; We only require some typing to make this plan faster. We can do without!
    (:requirements :typing)

    ;; We have two types: cleaners and the regions, both are objects
    (:types cleaner region - object)

    ;; define all the predicates as they are used in the problem files
    (:predicates

      ;; described what region a cleaner is at
      (cleaner-at ?c - cleaner ?x - region)

      ;; indicates that region ?x is above region ?y
      (above ?x - region ?y - region)

      ;; indicates that region ?x is below region ?y
      (below ?x - region ?y - region)

      ;; indicates that region ?x is right of region ?y
      (right ?x - region ?y - region)

      ;; indicates that region ?x is left of region ?y
      (left ?x - region ?y - region)

      ;; indicates that a region is cleaned
      (cleaned ?x - region)

      ;; indicates that a region is dirty
      (dirty ?x - region)

    )

;; ACTIONS that need to be defined:

(:action suck ;; suck action
  :parameters (?r - cleaner ?x - region) ;; our cleaner data
  :precondition (and
    ;;is current region dirty if true clean
    ;;cleaner = current region
    (dirty ?x) ;; check its dirty
    (cleaner-at ?r ?x) ;; check we are there
  )
  :effect (and
    ;;clean region
    (cleaned ?x) ;; clean it!
  )
)

(:action move_up ;; Allows the cleaner to move up to the above tile
  :parameters (?r - cleaner ?x - region ?y - region) ;; our cleaner data
  :precondition (and
    (above ?x ?y)   ;; check region is above our current
    (cleaner-at ?r ?y) ;; check we are at current location
  )
  :effect (and
    (cleaner-at ?r ?x) ;; move the cleaner
    (not (cleaner-at ?r ?y)) ;; check we are not still at old place
  )
 )

(:action move_down ;; Allows the cleaner to move down to the below tile
  :parameters (?r - cleaner ?x - region ?y - region) ;; our cleaner data
  :precondition (and
    (below ?x ?y)   ;; check region is above our current
    (cleaner-at ?r ?y) ;; check we are at current location
  )
  :effect (and
    (cleaner-at ?r ?x) ;; move the cleaner
    (not (cleaner-at ?r ?y)) ;; check we are not still at old place
  )
 )

(:action move_left ;; Allows the cleaner to move left to the side tile
  :parameters (?r - cleaner ?x - region ?y - region) ;; our cleaner data
  :precondition (and
    (left ?x ?y)   ;; check region is above our current
    (cleaner-at ?r ?y) ;; check we are at current location
  )
  :effect (and
    (cleaner-at ?r ?x) ;; move the cleaner
    (not (cleaner-at ?r ?y)) ;; check we are not still at old place
  )
 )

(:action move_right ;; Allows the cleaner to move right to the side tile
  :parameters (?r - cleaner ?x - region ?y - region) ;; our cleaner data
  :precondition (and
    (right ?x ?y)   ;; check region is above our current
    (cleaner-at ?r ?y) ;; check we are at current location
  )
  :effect (and
    (cleaner-at ?r ?x) ;; move the cleaner
    (not (cleaner-at ?r ?y)) ;; check we are not still at old place
  )
 )
)
;; Refrences

;;Helmert, M., 2018. introtopddl2.pdf. [Online]
;;Available at: http://www.cs.toronto.edu/~sheila/2542/s14/A1/introtopddl2.pdf
;;[Accessed 20 April 2018].

;;Yu, M., 2018. CMP2020 10 Planning 2.pdf. [Online]
;;Available at: https://blackboard.lincoln.ac.uk/bbcswebdav/pid-1784863-dt-content-rid-3282946_2/xid-3282946_2
;;[Accessed 12 April 2018].
