MACHINE
    CONTROLLER_henrique
SEES
    CTX , SENSORS , ENABLER
CONCRETE_VARIABLES
    current_action_h , /* action to be performed by the system */
    current_authentication_h ,
    current_objective_h /* user's objective based on button pushed and card reader */
INVARIANT
    current_action_h : ACTIONS &
    current_authentication_h : AUTHENTICATED &
    current_objective_h : OBJECTIVES
INITIALISATION
    current_action_h := NONE ||
    current_authentication_h := AUTHENTICATED_NONE ||
    current_objective_h := OBJ_NONE
OPERATIONS
    act , auth , obj <-- get_status_henrique =
    BEGIN
        act := current_action_h ||
        auth := current_authentication_h ||
        obj := current_objective_h
    END ;


    process_readers_henrique =
    BEGIN
        current_authentication_h : (
            current_authentication_h : AUTHENTICATED &
            ( not ( current_authentication_h = AUTHENTICATED_NONE ) =>
                current_authentication_h$0 : { AUTHENTICATED_NONE , current_authentication_h } )
        )
    END ;

    control_henrique =
    BEGIN
        current_action_h ,
        current_objective_h : (
            current_action_h : ACTIONS &
            current_objective_h : OBJECTIVES &

            ( current_action_h = TRANSLATE_OPEN_DOOR_A =>
                pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE
            ) &

            ( current_action_h = TRANSLATE_OPEN_DOOR_B =>
                pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE
            ) &

            ( current_action_h = ADAPT_PRESSURE_L_TO_A =>
                contact_sensor_a = TRUE &
                contact_sensor_b = TRUE &
                pressure_sensor_l /= PRESSURE_A
            ) &

            ( current_action_h = ADAPT_PRESSURE_L_TO_B =>
                contact_sensor_a = TRUE &
                contact_sensor_b = TRUE &
                pressure_sensor_l /= PRESSURE_B
            )
        )
    END
END
