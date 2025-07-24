MACHINE
    SENSORS
SEES 
    CTX
CONCRETE_VARIABLES
    /* P2 */
    pressure_sensor_l, 
    contact_sensor_a, 
    contact_sensor_b,
    
    /* P3 */
    card_reader_a,
    card_reader_l,
    card_reader_b,    
    
    button_room_a_open_a,
    button_room_l_open_a,
    button_room_l_open_b,
    button_room_b_open_b

    
INVARIANT
    pressure_sensor_l : PRESSURES &
    contact_sensor_a : BOOL & // TRUE means door closed
    contact_sensor_b : BOOL & // TRUE means door closed
    
    card_reader_a : BOOL & // TRUE means card reader activated this cycle
    card_reader_l : BOOL & // TRUE means card reader activated this cycle
    card_reader_b : BOOL & // TRUE means bcard reader activated this cycle
    
    button_room_a_open_a : BOOL & // TRUE means button pushed this cycle
    button_room_l_open_a : BOOL & // TRUE means button pushed this cycle
    button_room_l_open_b : BOOL & // TRUE means button pushed this cycle
    button_room_b_open_b : BOOL  // TRUE means button pushed this cycle
    
INITIALISATION
    pressure_sensor_l :: PRESSURES ||
    contact_sensor_a :: BOOL ||
    contact_sensor_b :: BOOL ||
    card_reader_a := FALSE ||
    card_reader_l :: BOOL ||
    card_reader_b :: BOOL ||    
    button_room_a_open_a :: BOOL ||
    button_room_l_open_a :: BOOL ||
    button_room_l_open_b :: BOOL ||
    button_room_b_open_b :: BOOL 

OPERATIONS
    update_sensors_states =
    BEGIN
        pressure_sensor_l, 
        contact_sensor_a, 
        contact_sensor_b: (
            pressure_sensor_l : PRESSURES &
            contact_sensor_a : BOOL & 
            contact_sensor_b : BOOL &    
            (not(pressure_sensor_l = PRESSURE_A) => contact_sensor_a = TRUE) &
            (not(pressure_sensor_l = PRESSURE_B) => contact_sensor_b = TRUE)
        ) ||
        card_reader_a :: BOOL ||
        card_reader_l :: BOOL ||
        card_reader_b :: BOOL ||
        
        button_room_a_open_a :: BOOL ||
        button_room_l_open_a :: BOOL ||
        button_room_l_open_b :: BOOL ||
        button_room_b_open_b :: BOOL
    END    
END
