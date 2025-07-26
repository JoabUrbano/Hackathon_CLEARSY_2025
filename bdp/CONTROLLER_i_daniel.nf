Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(CONTROLLER_i_daniel))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(CONTROLLER_i_daniel))==(Machine(CONTROLLER_daniel));
  Level(Implementation(CONTROLLER_i_daniel))==(1);
  Upper_Level(Implementation(CONTROLLER_i_daniel))==(Machine(CONTROLLER_daniel))
END
&
THEORY LoadedStructureX IS
  Implementation(CONTROLLER_i_daniel)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(CONTROLLER_i_daniel))==(CTX,SENSORS,ENABLER)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(CONTROLLER_i_daniel))==(?);
  Inherited_List_Includes(Implementation(CONTROLLER_i_daniel))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(CONTROLLER_i_daniel))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(CONTROLLER_i_daniel))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(CONTROLLER_i_daniel))==(?);
  Context_List_Variables(Implementation(CONTROLLER_i_daniel))==(?);
  Abstract_List_Variables(Implementation(CONTROLLER_i_daniel))==(?);
  Local_List_Variables(Implementation(CONTROLLER_i_daniel))==(?);
  List_Variables(Implementation(CONTROLLER_i_daniel))==(?);
  External_List_Variables(Implementation(CONTROLLER_i_daniel))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(CONTROLLER_i_daniel))==(current_objective_d,current_authentication_d,current_action_d);
  Abstract_List_VisibleVariables(Implementation(CONTROLLER_i_daniel))==(current_objective_d,current_authentication_d,current_action_d);
  External_List_VisibleVariables(Implementation(CONTROLLER_i_daniel))==(?);
  Expanded_List_VisibleVariables(Implementation(CONTROLLER_i_daniel))==(?);
  List_VisibleVariables(Implementation(CONTROLLER_i_daniel))==(?);
  Internal_List_VisibleVariables(Implementation(CONTROLLER_i_daniel))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(CONTROLLER_i_daniel))==(btrue);
  Expanded_List_Invariant(Implementation(CONTROLLER_i_daniel))==(btrue);
  Abstract_List_Invariant(Implementation(CONTROLLER_i_daniel))==(current_action_d: ACTIONS & current_authentication_d: AUTHENTICATED & current_objective_d: OBJECTIVES);
  Context_List_Invariant(Implementation(CONTROLLER_i_daniel))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL & enable_door_a: BOOL & enable_door_b: BOOL & (enable_door_a = TRUE => enable_door_b = FALSE) & (enable_door_b = TRUE => enable_door_a = FALSE));
  List_Invariant(Implementation(CONTROLLER_i_daniel))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(CONTROLLER_i_daniel))==(btrue);
  Abstract_List_Assertions(Implementation(CONTROLLER_i_daniel))==(btrue);
  Context_List_Assertions(Implementation(CONTROLLER_i_daniel))==(btrue);
  List_Assertions(Implementation(CONTROLLER_i_daniel))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(CONTROLLER_i_daniel))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(CONTROLLER_i_daniel))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(CONTROLLER_i_daniel))==(current_action_d:=NONE;current_authentication_d:=AUTHENTICATED_NONE;current_objective_d:=OBJ_NONE);
  Context_List_Initialisation(Implementation(CONTROLLER_i_daniel))==(skip);
  List_Initialisation(Implementation(CONTROLLER_i_daniel))==(current_action_d:=NONE;current_authentication_d:=AUTHENTICATED_NONE;current_objective_d:=OBJ_NONE)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(CONTROLLER_i_daniel))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(CONTROLLER_i_daniel),Machine(CTX))==(?);
  List_Instanciated_Parameters(Implementation(CONTROLLER_i_daniel),Machine(SENSORS))==(?);
  List_Instanciated_Parameters(Implementation(CONTROLLER_i_daniel),Machine(ENABLER))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(CONTROLLER_i_daniel))==(btrue);
  List_Context_Constraints(Implementation(CONTROLLER_i_daniel))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(CONTROLLER_i_daniel))==(get_status_daniel,process_readers_daniel,control_daniel);
  List_Operations(Implementation(CONTROLLER_i_daniel))==(get_status_daniel,process_readers_daniel,control_daniel)
END
&
THEORY ListInputX IS
  List_Input(Implementation(CONTROLLER_i_daniel),get_status_daniel)==(?);
  List_Input(Implementation(CONTROLLER_i_daniel),process_readers_daniel)==(?);
  List_Input(Implementation(CONTROLLER_i_daniel),control_daniel)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(CONTROLLER_i_daniel),get_status_daniel)==(act,auth,obj);
  List_Output(Implementation(CONTROLLER_i_daniel),process_readers_daniel)==(?);
  List_Output(Implementation(CONTROLLER_i_daniel),control_daniel)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(CONTROLLER_i_daniel),get_status_daniel)==(act,auth,obj <-- get_status_daniel);
  List_Header(Implementation(CONTROLLER_i_daniel),process_readers_daniel)==(process_readers_daniel);
  List_Header(Implementation(CONTROLLER_i_daniel),control_daniel)==(control_daniel)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(CONTROLLER_i_daniel),get_status_daniel)==(btrue);
  List_Precondition(Implementation(CONTROLLER_i_daniel),get_status_daniel)==(btrue);
  Own_Precondition(Implementation(CONTROLLER_i_daniel),process_readers_daniel)==(btrue);
  List_Precondition(Implementation(CONTROLLER_i_daniel),process_readers_daniel)==(btrue);
  Own_Precondition(Implementation(CONTROLLER_i_daniel),control_daniel)==(btrue);
  List_Precondition(Implementation(CONTROLLER_i_daniel),control_daniel)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(CONTROLLER_i_daniel),control_daniel)==(btrue | @(previous_action,previous_objective).(previous_action:=current_action_d;previous_objective:=current_objective_d;(not(previous_objective = OBJ_OPEN_DOOR_B) & previous_objective = OBJ_OPEN_DOOR_A ==> (contact_sensor_a = FALSE ==> current_action_d:=NONE [] not(contact_sensor_a = FALSE) ==> (contact_sensor_b = FALSE ==> current_action_d:=TRANSLATE_CLOSE_DOOR_B [] not(contact_sensor_b = FALSE) ==> (pressure_sensor_l/=PRESSURE_A ==> current_action_d:=ADAPT_PRESSURE_L_TO_A [] not(pressure_sensor_l/=PRESSURE_A) ==> current_action_d:=TRANSLATE_OPEN_DOOR_A))) [] not(previous_objective = OBJ_OPEN_DOOR_A) & previous_objective = OBJ_OPEN_DOOR_B ==> (contact_sensor_b = FALSE ==> current_action_d:=NONE [] not(contact_sensor_b = FALSE) ==> (contact_sensor_a = FALSE ==> current_action_d:=TRANSLATE_CLOSE_DOOR_A [] not(contact_sensor_a = FALSE) ==> (pressure_sensor_l/=PRESSURE_B ==> current_action_d:=ADAPT_PRESSURE_L_TO_B [] not(pressure_sensor_l/=PRESSURE_B) ==> current_action_d:=TRANSLATE_OPEN_DOOR_B))) [] not(previous_objective = OBJ_OPEN_DOOR_A) & not(previous_objective = OBJ_OPEN_DOOR_B) ==> skip);(previous_objective = OBJ_NONE ==> (not(current_authentication_d = AUTHENTICATED_L) & not(current_authentication_d = AUTHENTICATED_B) & current_authentication_d = AUTHENTICATED_A ==> (button_room_a_open_a = TRUE ==> current_objective_d:=OBJ_OPEN_DOOR_A [] not(button_room_a_open_a = TRUE) ==> skip) [] not(current_authentication_d = AUTHENTICATED_A) & not(current_authentication_d = AUTHENTICATED_L) & current_authentication_d = AUTHENTICATED_B ==> (button_room_b_open_b = TRUE ==> current_objective_d:=OBJ_OPEN_DOOR_B [] not(button_room_b_open_b = TRUE) ==> skip) [] not(current_authentication_d = AUTHENTICATED_A) & not(current_authentication_d = AUTHENTICATED_B) & current_authentication_d = AUTHENTICATED_L ==> (button_room_l_open_a = TRUE ==> current_objective_d:=OBJ_OPEN_DOOR_A [] not(button_room_l_open_a = TRUE) ==> (button_room_l_open_b = TRUE ==> current_objective_d:=OBJ_OPEN_DOOR_B [] not(button_room_l_open_b = TRUE) ==> skip)) [] not(current_authentication_d = AUTHENTICATED_A) & not(current_authentication_d = AUTHENTICATED_B) & not(current_authentication_d = AUTHENTICATED_L) ==> skip) [] not(previous_objective = OBJ_NONE) ==> (previous_objective = OBJ_OPEN_DOOR_A & contact_sensor_a = FALSE or (previous_objective = OBJ_OPEN_DOOR_B & contact_sensor_b = FALSE) ==> current_objective_d:=OBJ_NONE [] not(previous_objective = OBJ_OPEN_DOOR_A & contact_sensor_a = FALSE or (previous_objective = OBJ_OPEN_DOOR_B & contact_sensor_b = FALSE)) ==> skip))));
  Expanded_List_Substitution(Implementation(CONTROLLER_i_daniel),process_readers_daniel)==(btrue | @previous_authentication.(previous_authentication:=current_authentication_d;(current_authentication_d = AUTHENTICATED_NONE ==> (card_reader_a = TRUE ==> current_authentication_d:=AUTHENTICATED_A [] not(card_reader_a = TRUE) ==> (card_reader_b = TRUE ==> current_authentication_d:=AUTHENTICATED_B [] not(card_reader_b = TRUE) ==> (card_reader_l = TRUE ==> current_authentication_d:=AUTHENTICATED_L [] not(card_reader_l = TRUE) ==> skip))) [] not(current_authentication_d = AUTHENTICATED_NONE) ==> (current_action_d = TRANSLATE_OPEN_DOOR_A or current_action_d = TRANSLATE_OPEN_DOOR_B ==> current_authentication_d:=AUTHENTICATED_NONE [] not(current_action_d = TRANSLATE_OPEN_DOOR_A or current_action_d = TRANSLATE_OPEN_DOOR_B) ==> skip))));
  Expanded_List_Substitution(Implementation(CONTROLLER_i_daniel),get_status_daniel)==(btrue | act:=current_action_d;auth:=current_authentication_d;obj:=current_objective_d);
  List_Substitution(Implementation(CONTROLLER_i_daniel),get_status_daniel)==(act:=current_action_d;auth:=current_authentication_d;obj:=current_objective_d);
  List_Substitution(Implementation(CONTROLLER_i_daniel),process_readers_daniel)==(VAR previous_authentication IN previous_authentication:=current_authentication_d;IF current_authentication_d = AUTHENTICATED_NONE THEN IF card_reader_a = TRUE THEN current_authentication_d:=AUTHENTICATED_A ELSIF card_reader_b = TRUE THEN current_authentication_d:=AUTHENTICATED_B ELSIF card_reader_l = TRUE THEN current_authentication_d:=AUTHENTICATED_L END ELSE IF current_action_d = TRANSLATE_OPEN_DOOR_A or current_action_d = TRANSLATE_OPEN_DOOR_B THEN current_authentication_d:=AUTHENTICATED_NONE END END END);
  List_Substitution(Implementation(CONTROLLER_i_daniel),control_daniel)==(VAR previous_action,previous_objective IN previous_action:=current_action_d;previous_objective:=current_objective_d;CASE previous_objective OF EITHER OBJ_OPEN_DOOR_A THEN IF contact_sensor_a = FALSE THEN current_action_d:=NONE ELSIF contact_sensor_b = FALSE THEN current_action_d:=TRANSLATE_CLOSE_DOOR_B ELSIF pressure_sensor_l/=PRESSURE_A THEN current_action_d:=ADAPT_PRESSURE_L_TO_A ELSE current_action_d:=TRANSLATE_OPEN_DOOR_A END OR OBJ_OPEN_DOOR_B THEN IF contact_sensor_b = FALSE THEN current_action_d:=NONE ELSIF contact_sensor_a = FALSE THEN current_action_d:=TRANSLATE_CLOSE_DOOR_A ELSIF pressure_sensor_l/=PRESSURE_B THEN current_action_d:=ADAPT_PRESSURE_L_TO_B ELSE current_action_d:=TRANSLATE_OPEN_DOOR_B END ELSE skip END END;IF previous_objective = OBJ_NONE THEN CASE current_authentication_d OF EITHER AUTHENTICATED_A THEN IF button_room_a_open_a = TRUE THEN current_objective_d:=OBJ_OPEN_DOOR_A END OR AUTHENTICATED_B THEN IF button_room_b_open_b = TRUE THEN current_objective_d:=OBJ_OPEN_DOOR_B END OR AUTHENTICATED_L THEN IF button_room_l_open_a = TRUE THEN current_objective_d:=OBJ_OPEN_DOOR_A ELSIF button_room_l_open_b = TRUE THEN current_objective_d:=OBJ_OPEN_DOOR_B END ELSE skip END END ELSE IF previous_objective = OBJ_OPEN_DOOR_A & contact_sensor_a = FALSE or (previous_objective = OBJ_OPEN_DOOR_B & contact_sensor_b = FALSE) THEN current_objective_d:=OBJ_NONE END END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(CONTROLLER_i_daniel))==(?);
  Inherited_List_Constants(Implementation(CONTROLLER_i_daniel))==(?);
  List_Constants(Implementation(CONTROLLER_i_daniel))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(CONTROLLER_i_daniel),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Context_List_Enumerated(Implementation(CONTROLLER_i_daniel))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Context_List_Defered(Implementation(CONTROLLER_i_daniel))==(?);
  Context_List_Sets(Implementation(CONTROLLER_i_daniel))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  List_Own_Enumerated(Implementation(CONTROLLER_i_daniel))==(?);
  List_Valuable_Sets(Implementation(CONTROLLER_i_daniel))==(?);
  Inherited_List_Enumerated(Implementation(CONTROLLER_i_daniel))==(?);
  Inherited_List_Defered(Implementation(CONTROLLER_i_daniel))==(?);
  Inherited_List_Sets(Implementation(CONTROLLER_i_daniel))==(?);
  List_Enumerated(Implementation(CONTROLLER_i_daniel))==(?);
  List_Defered(Implementation(CONTROLLER_i_daniel))==(?);
  List_Sets(Implementation(CONTROLLER_i_daniel))==(?);
  Set_Definition(Implementation(CONTROLLER_i_daniel),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Implementation(CONTROLLER_i_daniel),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Implementation(CONTROLLER_i_daniel),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(CONTROLLER_i_daniel))==(?);
  Expanded_List_HiddenConstants(Implementation(CONTROLLER_i_daniel))==(?);
  List_HiddenConstants(Implementation(CONTROLLER_i_daniel))==(?);
  External_List_HiddenConstants(Implementation(CONTROLLER_i_daniel))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(CONTROLLER_i_daniel))==(btrue);
  Context_List_Properties(Implementation(CONTROLLER_i_daniel))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Inherited_List_Properties(Implementation(CONTROLLER_i_daniel))==(btrue);
  List_Properties(Implementation(CONTROLLER_i_daniel))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(CONTROLLER_i_daniel))==(aa: aa);
  List_Values(Implementation(CONTROLLER_i_daniel))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(CONTROLLER_i_daniel),Machine(ENABLER))==(compute_enabling);
  Seen_Context_List_Enumerated(Implementation(CONTROLLER_i_daniel))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Seen_Context_List_Invariant(Implementation(CONTROLLER_i_daniel))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL);
  Seen_Context_List_Assertions(Implementation(CONTROLLER_i_daniel))==(btrue);
  Seen_Context_List_Properties(Implementation(CONTROLLER_i_daniel))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Seen_List_Constraints(Implementation(CONTROLLER_i_daniel))==(btrue);
  Seen_List_Precondition(Implementation(CONTROLLER_i_daniel),compute_enabling)==((pressure_sensor_l/=PRESSURE_A => contact_sensor_a = TRUE) & (pressure_sensor_l/=PRESSURE_B => contact_sensor_b = TRUE));
  Seen_Expanded_List_Substitution(Implementation(CONTROLLER_i_daniel),compute_enabling)==(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE ==> enable_door_a,enable_door_b:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) ==> (pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE ==> enable_door_b,enable_door_a:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) ==> enable_door_a,enable_door_b:=FALSE,FALSE));
  Seen_List_Operations(Implementation(CONTROLLER_i_daniel),Machine(ENABLER))==(compute_enabling);
  Seen_Expanded_List_Invariant(Implementation(CONTROLLER_i_daniel),Machine(ENABLER))==(btrue);
  Seen_Internal_List_Operations(Implementation(CONTROLLER_i_daniel),Machine(SENSORS))==(update_sensors_states);
  Seen_List_Precondition(Implementation(CONTROLLER_i_daniel),update_sensors_states)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(CONTROLLER_i_daniel),update_sensors_states)==(@(pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1).(pressure_sensor_l$1: PRESSURES & contact_sensor_a$1: BOOL & contact_sensor_b$1: BOOL & (not(pressure_sensor_l$1 = PRESSURE_A) => contact_sensor_a$1 = TRUE) & (not(pressure_sensor_l$1 = PRESSURE_B) => contact_sensor_b$1 = TRUE) ==> pressure_sensor_l,contact_sensor_a,contact_sensor_b:=pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1) || @(card_reader_a$0).(card_reader_a$0: BOOL ==> card_reader_a:=card_reader_a$0) || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0));
  Seen_List_Operations(Implementation(CONTROLLER_i_daniel),Machine(SENSORS))==(update_sensors_states);
  Seen_Expanded_List_Invariant(Implementation(CONTROLLER_i_daniel),Machine(SENSORS))==(btrue);
  Set_Definition(Implementation(CONTROLLER_i_daniel),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Set_Definition(Implementation(CONTROLLER_i_daniel),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Implementation(CONTROLLER_i_daniel),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Implementation(CONTROLLER_i_daniel),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER});
  Seen_Internal_List_Operations(Implementation(CONTROLLER_i_daniel),Machine(CTX))==(?);
  Seen_List_Operations(Implementation(CONTROLLER_i_daniel),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Implementation(CONTROLLER_i_daniel),Machine(CTX))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(CONTROLLER_i_daniel),Machine(ENABLER))==(compute_enabling);
  List_Included_Operations(Implementation(CONTROLLER_i_daniel),Machine(SENSORS))==(update_sensors_states)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(CONTROLLER_i_daniel))==(Type(control_daniel) == Cst(No_type,No_type);Type(process_readers_daniel) == Cst(No_type,No_type);Type(get_status_daniel) == Cst(etype(ACTIONS,?,?)*etype(AUTHENTICATED,?,?)*etype(OBJECTIVES,?,?),No_type));
  VisibleVariables(Implementation(CONTROLLER_i_daniel))==(Type(current_objective_d) == Mvv(etype(OBJECTIVES,?,?));Type(current_authentication_d) == Mvv(etype(AUTHENTICATED,?,?));Type(current_action_d) == Mvv(etype(ACTIONS,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants_Env(Implementation(CONTROLLER_i_daniel),Machine(CTX))==(Type(PRESSURE_A) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_B) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_OTHER) == Cst(etype(PRESSURES,0,2));Type(OBJ_OPEN_DOOR_A) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_OPEN_DOOR_B) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_NONE) == Cst(etype(OBJECTIVES,0,2));Type(NONE) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_A) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_B) == Cst(etype(ACTIONS,0,6));Type(AUTHENTICATED_A) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_L) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_B) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_NONE) == Cst(etype(AUTHENTICATED,0,3)));
  Enumerate_Definition(Implementation(CONTROLLER_i_daniel),Machine(CTX),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Enumerate_Definition(Implementation(CONTROLLER_i_daniel),Machine(CTX),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Enumerate_Definition(Implementation(CONTROLLER_i_daniel),Machine(CTX),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Enumerate_Definition(Implementation(CONTROLLER_i_daniel),Machine(CTX),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(CONTROLLER_i_daniel)) == (? | ? | ? | ? | get_status_daniel,process_readers_daniel,control_daniel | ? | seen(Machine(CTX)),seen(Machine(SENSORS)),seen(Machine(ENABLER)) | ? | CONTROLLER_i_daniel);
  List_Of_HiddenCst_Ids(Implementation(CONTROLLER_i_daniel)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(CONTROLLER_i_daniel)) == (?);
  List_Of_VisibleVar_Ids(Implementation(CONTROLLER_i_daniel)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(CONTROLLER_i_daniel)) == (?: ?);
  List_Of_Ids(Machine(ENABLER)) == (? | ? | ? | ? | compute_enabling | ? | seen(Machine(CTX)),seen(Machine(SENSORS)) | ? | ENABLER);
  List_Of_HiddenCst_Ids(Machine(ENABLER)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ENABLER)) == (?);
  List_Of_VisibleVar_Ids(Machine(ENABLER)) == (enable_door_b,enable_door_a | ?);
  List_Of_Ids_SeenBNU(Machine(ENABLER)) == (?: ?);
  List_Of_Ids(Machine(SENSORS)) == (? | ? | ? | ? | update_sensors_states | ? | seen(Machine(CTX)) | ? | SENSORS);
  List_Of_HiddenCst_Ids(Machine(SENSORS)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SENSORS)) == (?);
  List_Of_VisibleVar_Ids(Machine(SENSORS)) == (button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l | ?);
  List_Of_Ids_SeenBNU(Machine(SENSORS)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED,PRESSURE_A,PRESSURE_B,PRESSURE_OTHER,OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE,NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B,AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE | ? | ? | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(CONTROLLER_i_daniel)) == (Type(current_action_d) == Mvv(etype(ACTIONS,?,?));Type(current_authentication_d) == Mvv(etype(AUTHENTICATED,?,?));Type(current_objective_d) == Mvv(etype(OBJECTIVES,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(CONTROLLER_i_daniel),process_readers_daniel, 1) == (Type(previous_authentication) == Lvl(etype(AUTHENTICATED,?,?)));
  Variables_Loc(Implementation(CONTROLLER_i_daniel),control_daniel, 1) == (Type(previous_action) == Lvl(etype(ACTIONS,?,?));Type(previous_objective) == Lvl(etype(OBJECTIVES,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(CONTROLLER_i_daniel))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(CONTROLLER_i_daniel))==(current_objective_d: OBJECTIVES & current_authentication_d: AUTHENTICATED & current_action_d: ACTIONS)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
