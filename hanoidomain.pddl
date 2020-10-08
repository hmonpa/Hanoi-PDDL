(define (domain hanoi)
    (:requirements :strips :equality :adl
    )
    (:predicates 
        (limpiar ?x)
        (en ?x ?y)
        (menor ?x ?y)
    )
    (:action mover
    :parameters (?disc ?from ?to)
    :precondition (and (menor ?to ?disc) (en ?disc ?from) (limpiar ?disc) (limpiar ?to))
    :effect  (and 
                (limpiar ?from)
                (en ?disc ?to)
                (not (en ?disc ?from))  
        		(not (limpiar ?to))   
	          )
	)
)