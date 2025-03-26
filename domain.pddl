(define (domain travel-planner)
  (:requirements :strips :typing)
  (:types location vehicle)

  (:predicates
    (at ?p - location)
    (connected ?from ?to - location)
    (available ?v - vehicle)
    (boarded ?v - vehicle)
    (checked-in)
    (at-gate)
  )

  (:action take-taxi
    :parameters (?from ?to - location)
    :precondition (and (at ?from) (connected ?from ?to))
    :effect (and (not (at ?from)) (at ?to))
  )

  (:action take-bus
    :parameters (?from ?to - location)
    :precondition (and (at ?from) (connected ?from ?to))
    :effect (and (not (at ?from)) (at ?to))
  )

  (:action walk
    :parameters (?from ?to - location)
    :precondition (and (at ?from) (connected ?from ?to))
    :effect (and (not (at ?from)) (at ?to))
  )

  (:action check-in
    :parameters ()
    :precondition (at airport)
    :effect (checked-in)
  )

  (:action go-to-gate
    :parameters ()
    :precondition (and (at security) (checked-in))
    :effect (at-gate)
  )

  (:action board-flight
    :parameters ()
    :precondition (at-gate)
    :effect (boarded flight))
)
