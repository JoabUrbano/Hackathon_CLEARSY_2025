MACHINE
    ENABLER

SEES
    CTX ,
    SENSORS

CONCRETE_VARIABLES
    enable_door_a ,
    enable_door_b

INVARIANT
    enable_door_a : BOOL &
    enable_door_b : BOOL &
    ( enable_door_a = TRUE => enable_door_b = FALSE ) &
    ( enable_door_b = TRUE => enable_door_a = FALSE )

INITIALISATION
    enable_door_a := FALSE ||
    enable_door_b := FALSE

OPERATIONS
    compute_enabling =
        PRE ( pressure_sensor_l /= PRESSURE_A => contact_sensor_a = TRUE ) &
            ( pressure_sensor_l /= PRESSURE_B => contact_sensor_b = TRUE )
        THEN
            IF pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE THEN
                enable_door_a := FALSE ||
                enable_door_b := TRUE
            ELSE IF pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE THEN
                    enable_door_b := FALSE ||
                    enable_door_a := TRUE
                ELSE
                    enable_door_a := FALSE ||
                    enable_door_b := FALSE
                END
            END
        END

END
