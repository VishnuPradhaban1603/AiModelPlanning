(define (problem travel-to-airport)
  (:domain travel-planner)
  (:objects
    home terminal bus-stop airport security gate - location
    taxi bus flight - vehicle
  )

  (:init
    (at home)
    (connected home bus-stop)
    (connected bus-stop terminal)
    (connected terminal airport)
    (connected airport security)
    (connected security gate)
    (available taxi)
    (available bus)
  )

  (:goal
    (and (boarded flight))
  )
)
