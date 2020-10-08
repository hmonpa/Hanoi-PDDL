(define (problem hanoi3)
    (:domain hanoi)
    (:objects torreA torreB torreC d1 d2 d3)
    (:init 
       (objetivo torreA d1) (objetivo torreA d2) (objetivo torreA d3)
       (objetivo torreB d1) (objetivo torreB d2) (objetivo torreB d3)
       (objetivo torreC d1) (objetivo torreC d2) (objetivo torreC d3)
       (objetivo d2 d1) (objetivo d3 d1) (objetivo d3 d2)
       (libre torreB) (libre torreC) (libre d1)
       (union d3 torreA) (union d2 d3) (union d1 d2))
    (:goal 
        (and 
            (union d3 torreC)
            (union d2 d3)
            (union d1 d2)
        )
    )
  )
