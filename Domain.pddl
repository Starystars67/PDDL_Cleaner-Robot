;;Domain template 1 for cleaning floor regions
;; A domain file for CMP2020M assignment 2017/2018

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

(:action suck
  :parameters (?r - cleaner ?x - region ?) ;; our cleaner data
  :precondition (and 
    (...)                         
  )
  :effect (and 
    (...) 
    (...)
  )
)

(:action move_up ;; Allows the cleaner to move up to the above tile
  :parameters (?r - cleaner ?x - region ?) ;; our cleaner data
  :precondition (and 
    (...)                         
  )
  :effect (and 
    (...) 
    (...)
  )
 )

;; (:action move_down
  :parameters (?r - cleaner ?x - region ?) ;; our cleaner data
  :precondition (and 
    (...)                         
  )
  :effect (and 
    (...) 
    (...)
  )
 )

;; (:action move_left
  :parameters (?r - cleaner ?x - region ?) ;; our cleaner data
  :precondition (and 
    (...)                         
  )
  :effect (and 
    (...) 
    (...)
  )
 )

;; (:action move_right
  :parameters (?r - cleaner ?x - region ?) ;; our cleaner data
  :precondition (and 
    (...)                         
  )
  :effect (and 
    (...) 
    (...)
  )
 )



)

