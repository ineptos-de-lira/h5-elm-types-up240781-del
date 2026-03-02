module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map
        (\n ->
            if n < 0 then
                Pending

            else if n >= 7 then
                Approved

            else
                Failed
        )
        grades


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses


adder3 : (Int -> Int -> Int) -> Int
adder3 paramLambda =
    paramLambda 1 2
