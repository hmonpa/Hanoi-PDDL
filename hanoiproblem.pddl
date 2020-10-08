(define (problem hanoi3)
    (:domain hanoi)
    (:objects torreA torreB torreC d1 d2 d3)
    (:init 
       (menor torreA d1) (menor torreA d2) (menor torreA d3)
       (menor torreB d1) (menor torreB d2) (menor torreB d3)
       (menor torreC d1) (menor torreC d2) (menor torreC d3)
       (menor d2 d1) (menor d3 d1) (menor d3 d2)
       (limpiar torreB) (limpiar torreC) (limpiar d1)
       (en d3 torreA) (en d2 d3) (en d1 d2))
    (:goal 
        (and 
            (en d3 torreC)
            (en d2 d3)
            (en d1 d2)
        )
    )
  )