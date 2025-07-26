MACHINE
    CONTROLLER_daniel
SEES
    CTX , SENSORS , ENABLER
CONCRETE_VARIABLES
    current_action_d , /* action to be performed by the system */
    current_authentication_d ,
    current_objective_d /* user's objective based on button pushed and card reader */
INVARIANT
    current_action_d : ACTIONS &
    current_authentication_d : AUTHENTICATED &
    current_objective_d : OBJECTIVES
INITIALISATION
    current_action_d := NONE ||
    current_authentication_d := AUTHENTICATED_NONE ||
    current_objective_d := OBJ_NONE
OPERATIONS
    act , auth , obj <-- get_status_daniel =
    BEGIN
        act := current_action_d ||
        auth := current_authentication_d ||
        obj := current_objective_d
    END ;

    process_readers_daniel =
    BEGIN
        current_authentication_d : (
            current_authentication_d : AUTHENTICATED &
            ( not ( current_authentication_d = AUTHENTICATED_NONE ) =>
                current_authentication_d$0 : { AUTHENTICATED_NONE , current_authentication_d } )
        )
    END ;

    control_daniel =
    BEGIN
        current_action_d ,
        current_objective_d : (
            current_action_d : ACTIONS &
            current_objective_d : OBJECTIVES &

            ( current_action_d = TRANSLATE_OPEN_DOOR_A =>
                pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE
            ) &

            ( current_action_d = TRANSLATE_OPEN_DOOR_B =>
                pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE
            ) &

            ( current_action_d = ADAPT_PRESSURE_L_TO_A =>
                contact_sensor_a = TRUE &
                contact_sensor_b = TRUE &
                pressure_sensor_l /= PRESSURE_A
            ) &

            ( current_action_d = ADAPT_PRESSURE_L_TO_B =>
                contact_sensor_a = TRUE &
                contact_sensor_b = TRUE &
                pressure_sensor_l /= PRESSURE_B
            )
        )
    END
END
