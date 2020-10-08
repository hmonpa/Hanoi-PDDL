(define (domain hanoi)
    (:requirements :strips :equality :adl
    )
    (:predicates 
        (libre ?x)
        (union ?x ?y)
        (objetivo ?x ?y)
    )
    (:action mover
    :parameters (?disc ?from ?to)
    :precondition (and (objetivo ?to ?disc) (union ?disc ?from) (libre ?disc) (libre ?to))
    :effect  (and 
                (libre ?from)									
                (union ?disc ?to)
                (not (union ?disc ?from))  
        		(not (libre ?to))   
	          )
	)
)
