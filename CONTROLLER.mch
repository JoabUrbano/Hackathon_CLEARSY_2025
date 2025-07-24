MACHINE
    CONTROLLER
SEES
    CTX, SENSORS, ENABLER
CONCRETE_VARIABLES
    current_action, /* action to be performed by the system */
    current_authentication,
    current_objective /* user's objective based on button pushed and card reader */
INVARIANT
    current_action : ACTIONS &
    current_authentication: AUTHENTICATED &
    current_objective : OBJECTIVES 
INITIALISATION
    current_action := NONE ||
    current_authentication := AUTHENTICATED_NONE ||
    current_objective := OBJ_NONE
OPERATIONS
    process_readers = 
    BEGIN
        current_authentication: (
            current_authentication: AUTHENTICATED &
            (not(current_authentication = AUTHENTICATED_NONE) => 
                current_authentication$0 :{AUTHENTICATED_NONE, current_authentication}) 
        )
    END;
    
    control =
    BEGIN        
        current_action, 
        current_objective :(
            current_action: ACTIONS &
            current_objective : OBJECTIVES &
            
            (current_action = TRANSLATE_OPEN_DOOR_A => 
                pressure_sensor_l = PRESSURE_A &
		        contact_sensor_b = TRUE &
		        contact_sensor_a = TRUE &
		        current_objective = OBJ_OPEN_DOOR_A
            ) &

	        (current_action = TRANSLATE_OPEN_DOOR_B => 
                pressure_sensor_l = PRESSURE_B &
		        contact_sensor_a = TRUE &
		        contact_sensor_b = TRUE &
		        current_objective = OBJ_OPEN_DOOR_B
            ) &

	        (current_action = TRANSLATE_CLOSE_DOOR_A => 
                pressure_sensor_l = PRESSURE_A &
		        contact_sensor_a = FALSE
            ) &

	        (current_action = TRANSLATE_CLOSE_DOOR_B => 
                pressure_sensor_l = PRESSURE_B &
		        contact_sensor_b = FALSE
            ) &

	        (current_action = ADAPT_PRESSURE_L_TO_A =>
		        pressure_sensor_l /= PRESSURE_A &
		        contact_sensor_a = TRUE &
		        contact_sensor_b = TRUE &
		        current_objective = OBJ_OPEN_DOOR_A
	        ) &
	    
	        (current_action = ADAPT_PRESSURE_L_TO_B =>
		        pressure_sensor_l /= PRESSURE_B &
		        contact_sensor_a = TRUE &
		        contact_sensor_b = TRUE &
		        current_objective = OBJ_OPEN_DOOR_B
	        ) &
	        
	        (current_action = NONE =>
		        current_objective = OBJ_NONE
	        ) &
	    
	        (current_objective = OBJ_OPEN_DOOR_A =>
		        contact_sensor_a = TRUE &
		        (
		            button_room_a_open_a = TRUE or
                    button_room_l_open_a = TRUE
                ) &
		        (
		            current_authentication = AUTHENTICATED_A or
		            current_authentication = AUTHENTICATED_L
                )
	        ) &
	    
	        (current_objective = OBJ_OPEN_DOOR_B =>
		        contact_sensor_b = TRUE &
		        (
		            button_room_b_open_b = TRUE or
                    button_room_l_open_b = TRUE
                ) &
		        (
		            current_authentication = AUTHENTICATED_B or
		            current_authentication = AUTHENTICATED_L
                )
		    ) &
		    (current_objective = OBJ_NONE =>
		        button_room_a_open_a = FALSE &
                button_room_l_open_a = FALSE &
                button_room_l_open_b = FALSE &
                button_room_b_open_b = FALSE
		        
            )
        )
    END
END