MACHINE
    SENSORS
    
SEES
    CTX

CONCRETE_VARIABLES
    pressure_sensor_l,
    contact_sensor_a,
    contact_sensor_b
    
INVARIANT
    pressure_sensor_l : PRESSURES &
    contact_sensor_a : BOOL &
    contact_sensor_b : BOOL
    
INITIALISATION
    contact_sensor_a :: BOOL ||
    contact_sensor_b :: BOOL ||
    pressure_sensor_l :: PRESSURES
    
OPERATIONS
    update_sensors_states =
        BEGIN
            ANY pressure, contactA,contactB WHERE
                pressure : PRESSURES &
                contactA : BOOL &
                contactB : BOOL &
                ( contactA = FALSE => contactB = TRUE & pressure = PRESSURE_A) &
                ( contactB = FALSE => contactA = TRUE &  pressure = PRESSURE_B)
            THEN
                contact_sensor_a := contactA ||
                contact_sensor_b := contactB ||
                pressure_sensor_l := pressure    
            END
        END

END
