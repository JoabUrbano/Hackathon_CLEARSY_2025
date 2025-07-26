Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(CONTROLLER_henrique))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(CONTROLLER_henrique))==(Machine(CONTROLLER_henrique));
  Level(Machine(CONTROLLER_henrique))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(CONTROLLER_henrique)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(CONTROLLER_henrique))==(CTX,SENSORS,ENABLER)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(CONTROLLER_henrique))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(CONTROLLER_henrique))==(?);
  List_Includes(Machine(CONTROLLER_henrique))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(CONTROLLER_henrique))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(CONTROLLER_henrique))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(CONTROLLER_henrique))==(?);
  Context_List_Variables(Machine(CONTROLLER_henrique))==(?);
  Abstract_List_Variables(Machine(CONTROLLER_henrique))==(?);
  Local_List_Variables(Machine(CONTROLLER_henrique))==(?);
  List_Variables(Machine(CONTROLLER_henrique))==(?);
  External_List_Variables(Machine(CONTROLLER_henrique))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(CONTROLLER_henrique))==(?);
  Abstract_List_VisibleVariables(Machine(CONTROLLER_henrique))==(?);
  External_List_VisibleVariables(Machine(CONTROLLER_henrique))==(?);
  Expanded_List_VisibleVariables(Machine(CONTROLLER_henrique))==(?);
  List_VisibleVariables(Machine(CONTROLLER_henrique))==(current_objective_h,current_authentication_h,current_action_h);
  Internal_List_VisibleVariables(Machine(CONTROLLER_henrique))==(current_objective_h,current_authentication_h,current_action_h)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(CONTROLLER_henrique))==(btrue);
  Gluing_List_Invariant(Machine(CONTROLLER_henrique))==(btrue);
  Expanded_List_Invariant(Machine(CONTROLLER_henrique))==(btrue);
  Abstract_List_Invariant(Machine(CONTROLLER_henrique))==(btrue);
  Context_List_Invariant(Machine(CONTROLLER_henrique))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL & enable_door_a: BOOL & enable_door_b: BOOL & (enable_door_a = TRUE => enable_door_b = FALSE) & (enable_door_b = TRUE => enable_door_a = FALSE));
  List_Invariant(Machine(CONTROLLER_henrique))==(current_action_h: ACTIONS & current_authentication_h: AUTHENTICATED & current_objective_h: OBJECTIVES)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(CONTROLLER_henrique))==(btrue);
  Abstract_List_Assertions(Machine(CONTROLLER_henrique))==(btrue);
  Context_List_Assertions(Machine(CONTROLLER_henrique))==(btrue);
  List_Assertions(Machine(CONTROLLER_henrique))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(CONTROLLER_henrique))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(CONTROLLER_henrique))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(CONTROLLER_henrique))==(current_action_h,current_authentication_h,current_objective_h:=NONE,AUTHENTICATED_NONE,OBJ_NONE);
  Context_List_Initialisation(Machine(CONTROLLER_henrique))==(skip);
  List_Initialisation(Machine(CONTROLLER_henrique))==(current_action_h:=NONE || current_authentication_h:=AUTHENTICATED_NONE || current_objective_h:=OBJ_NONE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(CONTROLLER_henrique))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(CONTROLLER_henrique),Machine(CTX))==(?);
  List_Instanciated_Parameters(Machine(CONTROLLER_henrique),Machine(SENSORS))==(?);
  List_Instanciated_Parameters(Machine(CONTROLLER_henrique),Machine(ENABLER))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(CONTROLLER_henrique))==(btrue);
  List_Constraints(Machine(CONTROLLER_henrique))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(CONTROLLER_henrique))==(get_status_henrique,process_readers_henrique,control_henrique);
  List_Operations(Machine(CONTROLLER_henrique))==(get_status_henrique,process_readers_henrique,control_henrique)
END
&
THEORY ListInputX IS
  List_Input(Machine(CONTROLLER_henrique),get_status_henrique)==(?);
  List_Input(Machine(CONTROLLER_henrique),process_readers_henrique)==(?);
  List_Input(Machine(CONTROLLER_henrique),control_henrique)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(CONTROLLER_henrique),get_status_henrique)==(act,auth,obj);
  List_Output(Machine(CONTROLLER_henrique),process_readers_henrique)==(?);
  List_Output(Machine(CONTROLLER_henrique),control_henrique)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(CONTROLLER_henrique),get_status_henrique)==(act,auth,obj <-- get_status_henrique);
  List_Header(Machine(CONTROLLER_henrique),process_readers_henrique)==(process_readers_henrique);
  List_Header(Machine(CONTROLLER_henrique),control_henrique)==(control_henrique)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(CONTROLLER_henrique),get_status_henrique)==(btrue);
  List_Precondition(Machine(CONTROLLER_henrique),process_readers_henrique)==(btrue);
  List_Precondition(Machine(CONTROLLER_henrique),control_henrique)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(CONTROLLER_henrique),control_henrique)==(btrue | @(current_action_h$1,current_objective_h$1).(current_action_h$1: ACTIONS & current_objective_h$1: OBJECTIVES & (current_action_h$1 = TRANSLATE_OPEN_DOOR_A => pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) & (current_action_h$1 = TRANSLATE_OPEN_DOOR_B => pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) & (current_action_h$1 = ADAPT_PRESSURE_L_TO_A => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_A) & (current_action_h$1 = ADAPT_PRESSURE_L_TO_B => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_B) ==> current_action_h,current_objective_h:=current_action_h$1,current_objective_h$1));
  Expanded_List_Substitution(Machine(CONTROLLER_henrique),process_readers_henrique)==(btrue | @(current_authentication_h$1).(current_authentication_h$1: AUTHENTICATED & (not(current_authentication_h$1 = AUTHENTICATED_NONE) => current_authentication_h: {AUTHENTICATED_NONE,current_authentication_h$1}) ==> current_authentication_h:=current_authentication_h$1));
  Expanded_List_Substitution(Machine(CONTROLLER_henrique),get_status_henrique)==(btrue | act,auth,obj:=current_action_h,current_authentication_h,current_objective_h);
  List_Substitution(Machine(CONTROLLER_henrique),get_status_henrique)==(act:=current_action_h || auth:=current_authentication_h || obj:=current_objective_h);
  List_Substitution(Machine(CONTROLLER_henrique),process_readers_henrique)==(current_authentication_h: (current_authentication_h: AUTHENTICATED & (not(current_authentication_h = AUTHENTICATED_NONE) => current_authentication_h$0: {AUTHENTICATED_NONE,current_authentication_h})));
  List_Substitution(Machine(CONTROLLER_henrique),control_henrique)==(current_action_h,current_objective_h: (current_action_h: ACTIONS & current_objective_h: OBJECTIVES & (current_action_h = TRANSLATE_OPEN_DOOR_A => pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) & (current_action_h = TRANSLATE_OPEN_DOOR_B => pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) & (current_action_h = ADAPT_PRESSURE_L_TO_A => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_A) & (current_action_h = ADAPT_PRESSURE_L_TO_B => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_B)))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(CONTROLLER_henrique))==(?);
  Inherited_List_Constants(Machine(CONTROLLER_henrique))==(?);
  List_Constants(Machine(CONTROLLER_henrique))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(CONTROLLER_henrique),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Context_List_Enumerated(Machine(CONTROLLER_henrique))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Context_List_Defered(Machine(CONTROLLER_henrique))==(?);
  Context_List_Sets(Machine(CONTROLLER_henrique))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  List_Valuable_Sets(Machine(CONTROLLER_henrique))==(?);
  Inherited_List_Enumerated(Machine(CONTROLLER_henrique))==(?);
  Inherited_List_Defered(Machine(CONTROLLER_henrique))==(?);
  Inherited_List_Sets(Machine(CONTROLLER_henrique))==(?);
  List_Enumerated(Machine(CONTROLLER_henrique))==(?);
  List_Defered(Machine(CONTROLLER_henrique))==(?);
  List_Sets(Machine(CONTROLLER_henrique))==(?);
  Set_Definition(Machine(CONTROLLER_henrique),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Machine(CONTROLLER_henrique),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Machine(CONTROLLER_henrique),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(CONTROLLER_henrique))==(?);
  Expanded_List_HiddenConstants(Machine(CONTROLLER_henrique))==(?);
  List_HiddenConstants(Machine(CONTROLLER_henrique))==(?);
  External_List_HiddenConstants(Machine(CONTROLLER_henrique))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(CONTROLLER_henrique))==(btrue);
  Context_List_Properties(Machine(CONTROLLER_henrique))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Inherited_List_Properties(Machine(CONTROLLER_henrique))==(btrue);
  List_Properties(Machine(CONTROLLER_henrique))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(CONTROLLER_henrique),Machine(ENABLER))==(compute_enabling);
  Seen_Context_List_Enumerated(Machine(CONTROLLER_henrique))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Seen_Context_List_Invariant(Machine(CONTROLLER_henrique))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL);
  Seen_Context_List_Assertions(Machine(CONTROLLER_henrique))==(btrue);
  Seen_Context_List_Properties(Machine(CONTROLLER_henrique))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Seen_List_Constraints(Machine(CONTROLLER_henrique))==(btrue);
  Seen_List_Precondition(Machine(CONTROLLER_henrique),compute_enabling)==((pressure_sensor_l/=PRESSURE_A => contact_sensor_a = TRUE) & (pressure_sensor_l/=PRESSURE_B => contact_sensor_b = TRUE));
  Seen_Expanded_List_Substitution(Machine(CONTROLLER_henrique),compute_enabling)==(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE ==> enable_door_a,enable_door_b:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) ==> (pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE ==> enable_door_b,enable_door_a:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) ==> enable_door_a,enable_door_b:=FALSE,FALSE));
  Seen_List_Operations(Machine(CONTROLLER_henrique),Machine(ENABLER))==(compute_enabling);
  Seen_Expanded_List_Invariant(Machine(CONTROLLER_henrique),Machine(ENABLER))==(btrue);
  Seen_Internal_List_Operations(Machine(CONTROLLER_henrique),Machine(SENSORS))==(update_sensors_states);
  Seen_List_Precondition(Machine(CONTROLLER_henrique),update_sensors_states)==(btrue);
  Seen_Expanded_List_Substitution(Machine(CONTROLLER_henrique),update_sensors_states)==(@(pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1).(pressure_sensor_l$1: PRESSURES & contact_sensor_a$1: BOOL & contact_sensor_b$1: BOOL & (not(pressure_sensor_l$1 = PRESSURE_A) => contact_sensor_a$1 = TRUE) & (not(pressure_sensor_l$1 = PRESSURE_B) => contact_sensor_b$1 = TRUE) ==> pressure_sensor_l,contact_sensor_a,contact_sensor_b:=pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1) || @(card_reader_a$0).(card_reader_a$0: BOOL ==> card_reader_a:=card_reader_a$0) || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0));
  Seen_List_Operations(Machine(CONTROLLER_henrique),Machine(SENSORS))==(update_sensors_states);
  Seen_Expanded_List_Invariant(Machine(CONTROLLER_henrique),Machine(SENSORS))==(btrue);
  Set_Definition(Machine(CONTROLLER_henrique),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Set_Definition(Machine(CONTROLLER_henrique),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Machine(CONTROLLER_henrique),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Machine(CONTROLLER_henrique),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER});
  Seen_Internal_List_Operations(Machine(CONTROLLER_henrique),Machine(CTX))==(?);
  Seen_List_Operations(Machine(CONTROLLER_henrique),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(CONTROLLER_henrique),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(CONTROLLER_henrique),get_status_henrique)==(?);
  List_ANY_Var(Machine(CONTROLLER_henrique),process_readers_henrique)==(?);
  List_ANY_Var(Machine(CONTROLLER_henrique),control_henrique)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CONTROLLER_henrique)) == (? | ? | ? | ? | get_status_henrique,process_readers_henrique,control_henrique | ? | seen(Machine(CTX)),seen(Machine(SENSORS)),seen(Machine(ENABLER)) | ? | CONTROLLER_henrique);
  List_Of_HiddenCst_Ids(Machine(CONTROLLER_henrique)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CONTROLLER_henrique)) == (?);
  List_Of_VisibleVar_Ids(Machine(CONTROLLER_henrique)) == (current_objective_h,current_authentication_h,current_action_h | ?);
  List_Of_Ids_SeenBNU(Machine(CONTROLLER_henrique)) == (?: ?);
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
  VisibleVariables(Machine(CONTROLLER_henrique)) == (Type(current_objective_h) == Mvv(etype(OBJECTIVES,?,?));Type(current_authentication_h) == Mvv(etype(AUTHENTICATED,?,?));Type(current_action_h) == Mvv(etype(ACTIONS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(CONTROLLER_henrique)) == (Type(control_henrique) == Cst(No_type,No_type);Type(process_readers_henrique) == Cst(No_type,No_type);Type(get_status_henrique) == Cst(etype(ACTIONS,?,?)*etype(AUTHENTICATED,?,?)*etype(OBJECTIVES,?,?),No_type));
  Observers(Machine(CONTROLLER_henrique)) == (Type(get_status_henrique) == Cst(etype(ACTIONS,?,?)*etype(AUTHENTICATED,?,?)*etype(OBJECTIVES,?,?),No_type))
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
)
