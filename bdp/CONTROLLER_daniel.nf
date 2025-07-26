Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(CONTROLLER_daniel))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(CONTROLLER_daniel))==(Machine(CONTROLLER_daniel));
  Level(Machine(CONTROLLER_daniel))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(CONTROLLER_daniel)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(CONTROLLER_daniel))==(CTX,SENSORS,ENABLER)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(CONTROLLER_daniel))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(CONTROLLER_daniel))==(?);
  List_Includes(Machine(CONTROLLER_daniel))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(CONTROLLER_daniel))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(CONTROLLER_daniel))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(CONTROLLER_daniel))==(?);
  Context_List_Variables(Machine(CONTROLLER_daniel))==(?);
  Abstract_List_Variables(Machine(CONTROLLER_daniel))==(?);
  Local_List_Variables(Machine(CONTROLLER_daniel))==(?);
  List_Variables(Machine(CONTROLLER_daniel))==(?);
  External_List_Variables(Machine(CONTROLLER_daniel))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(CONTROLLER_daniel))==(?);
  Abstract_List_VisibleVariables(Machine(CONTROLLER_daniel))==(?);
  External_List_VisibleVariables(Machine(CONTROLLER_daniel))==(?);
  Expanded_List_VisibleVariables(Machine(CONTROLLER_daniel))==(?);
  List_VisibleVariables(Machine(CONTROLLER_daniel))==(current_objective_d,current_authentication_d,current_action_d);
  Internal_List_VisibleVariables(Machine(CONTROLLER_daniel))==(current_objective_d,current_authentication_d,current_action_d)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(CONTROLLER_daniel))==(btrue);
  Gluing_List_Invariant(Machine(CONTROLLER_daniel))==(btrue);
  Expanded_List_Invariant(Machine(CONTROLLER_daniel))==(btrue);
  Abstract_List_Invariant(Machine(CONTROLLER_daniel))==(btrue);
  Context_List_Invariant(Machine(CONTROLLER_daniel))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL & enable_door_a: BOOL & enable_door_b: BOOL & (enable_door_a = TRUE => enable_door_b = FALSE) & (enable_door_b = TRUE => enable_door_a = FALSE));
  List_Invariant(Machine(CONTROLLER_daniel))==(current_action_d: ACTIONS & current_authentication_d: AUTHENTICATED & current_objective_d: OBJECTIVES)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(CONTROLLER_daniel))==(btrue);
  Abstract_List_Assertions(Machine(CONTROLLER_daniel))==(btrue);
  Context_List_Assertions(Machine(CONTROLLER_daniel))==(btrue);
  List_Assertions(Machine(CONTROLLER_daniel))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(CONTROLLER_daniel))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(CONTROLLER_daniel))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(CONTROLLER_daniel))==(current_action_d,current_authentication_d,current_objective_d:=NONE,AUTHENTICATED_NONE,OBJ_NONE);
  Context_List_Initialisation(Machine(CONTROLLER_daniel))==(skip);
  List_Initialisation(Machine(CONTROLLER_daniel))==(current_action_d:=NONE || current_authentication_d:=AUTHENTICATED_NONE || current_objective_d:=OBJ_NONE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(CONTROLLER_daniel))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(CONTROLLER_daniel),Machine(CTX))==(?);
  List_Instanciated_Parameters(Machine(CONTROLLER_daniel),Machine(SENSORS))==(?);
  List_Instanciated_Parameters(Machine(CONTROLLER_daniel),Machine(ENABLER))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(CONTROLLER_daniel))==(btrue);
  List_Constraints(Machine(CONTROLLER_daniel))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(CONTROLLER_daniel))==(get_status_daniel,process_readers_daniel,control_daniel);
  List_Operations(Machine(CONTROLLER_daniel))==(get_status_daniel,process_readers_daniel,control_daniel)
END
&
THEORY ListInputX IS
  List_Input(Machine(CONTROLLER_daniel),get_status_daniel)==(?);
  List_Input(Machine(CONTROLLER_daniel),process_readers_daniel)==(?);
  List_Input(Machine(CONTROLLER_daniel),control_daniel)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(CONTROLLER_daniel),get_status_daniel)==(act,auth,obj);
  List_Output(Machine(CONTROLLER_daniel),process_readers_daniel)==(?);
  List_Output(Machine(CONTROLLER_daniel),control_daniel)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(CONTROLLER_daniel),get_status_daniel)==(act,auth,obj <-- get_status_daniel);
  List_Header(Machine(CONTROLLER_daniel),process_readers_daniel)==(process_readers_daniel);
  List_Header(Machine(CONTROLLER_daniel),control_daniel)==(control_daniel)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(CONTROLLER_daniel),get_status_daniel)==(btrue);
  List_Precondition(Machine(CONTROLLER_daniel),process_readers_daniel)==(btrue);
  List_Precondition(Machine(CONTROLLER_daniel),control_daniel)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(CONTROLLER_daniel),control_daniel)==(btrue | @(current_action_d$1,current_objective_d$1).(current_action_d$1: ACTIONS & current_objective_d$1: OBJECTIVES & (current_action_d$1 = TRANSLATE_OPEN_DOOR_A => pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) & (current_action_d$1 = TRANSLATE_OPEN_DOOR_B => pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) & (current_action_d$1 = ADAPT_PRESSURE_L_TO_A => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_A) & (current_action_d$1 = ADAPT_PRESSURE_L_TO_B => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_B) ==> current_action_d,current_objective_d:=current_action_d$1,current_objective_d$1));
  Expanded_List_Substitution(Machine(CONTROLLER_daniel),process_readers_daniel)==(btrue | @(current_authentication_d$1).(current_authentication_d$1: AUTHENTICATED & (not(current_authentication_d$1 = AUTHENTICATED_NONE) => current_authentication_d: {AUTHENTICATED_NONE,current_authentication_d$1}) ==> current_authentication_d:=current_authentication_d$1));
  Expanded_List_Substitution(Machine(CONTROLLER_daniel),get_status_daniel)==(btrue | act,auth,obj:=current_action_d,current_authentication_d,current_objective_d);
  List_Substitution(Machine(CONTROLLER_daniel),get_status_daniel)==(act:=current_action_d || auth:=current_authentication_d || obj:=current_objective_d);
  List_Substitution(Machine(CONTROLLER_daniel),process_readers_daniel)==(current_authentication_d: (current_authentication_d: AUTHENTICATED & (not(current_authentication_d = AUTHENTICATED_NONE) => current_authentication_d$0: {AUTHENTICATED_NONE,current_authentication_d})));
  List_Substitution(Machine(CONTROLLER_daniel),control_daniel)==(current_action_d,current_objective_d: (current_action_d: ACTIONS & current_objective_d: OBJECTIVES & (current_action_d = TRANSLATE_OPEN_DOOR_A => pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) & (current_action_d = TRANSLATE_OPEN_DOOR_B => pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) & (current_action_d = ADAPT_PRESSURE_L_TO_A => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_A) & (current_action_d = ADAPT_PRESSURE_L_TO_B => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_B)))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(CONTROLLER_daniel))==(?);
  Inherited_List_Constants(Machine(CONTROLLER_daniel))==(?);
  List_Constants(Machine(CONTROLLER_daniel))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(CONTROLLER_daniel),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Context_List_Enumerated(Machine(CONTROLLER_daniel))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Context_List_Defered(Machine(CONTROLLER_daniel))==(?);
  Context_List_Sets(Machine(CONTROLLER_daniel))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  List_Valuable_Sets(Machine(CONTROLLER_daniel))==(?);
  Inherited_List_Enumerated(Machine(CONTROLLER_daniel))==(?);
  Inherited_List_Defered(Machine(CONTROLLER_daniel))==(?);
  Inherited_List_Sets(Machine(CONTROLLER_daniel))==(?);
  List_Enumerated(Machine(CONTROLLER_daniel))==(?);
  List_Defered(Machine(CONTROLLER_daniel))==(?);
  List_Sets(Machine(CONTROLLER_daniel))==(?);
  Set_Definition(Machine(CONTROLLER_daniel),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Machine(CONTROLLER_daniel),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Machine(CONTROLLER_daniel),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(CONTROLLER_daniel))==(?);
  Expanded_List_HiddenConstants(Machine(CONTROLLER_daniel))==(?);
  List_HiddenConstants(Machine(CONTROLLER_daniel))==(?);
  External_List_HiddenConstants(Machine(CONTROLLER_daniel))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(CONTROLLER_daniel))==(btrue);
  Context_List_Properties(Machine(CONTROLLER_daniel))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Inherited_List_Properties(Machine(CONTROLLER_daniel))==(btrue);
  List_Properties(Machine(CONTROLLER_daniel))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(CONTROLLER_daniel),Machine(ENABLER))==(compute_enabling);
  Seen_Context_List_Enumerated(Machine(CONTROLLER_daniel))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Seen_Context_List_Invariant(Machine(CONTROLLER_daniel))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL);
  Seen_Context_List_Assertions(Machine(CONTROLLER_daniel))==(btrue);
  Seen_Context_List_Properties(Machine(CONTROLLER_daniel))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Seen_List_Constraints(Machine(CONTROLLER_daniel))==(btrue);
  Seen_List_Precondition(Machine(CONTROLLER_daniel),compute_enabling)==((pressure_sensor_l/=PRESSURE_A => contact_sensor_a = TRUE) & (pressure_sensor_l/=PRESSURE_B => contact_sensor_b = TRUE));
  Seen_Expanded_List_Substitution(Machine(CONTROLLER_daniel),compute_enabling)==(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE ==> enable_door_a,enable_door_b:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) ==> (pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE ==> enable_door_b,enable_door_a:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) ==> enable_door_a,enable_door_b:=FALSE,FALSE));
  Seen_List_Operations(Machine(CONTROLLER_daniel),Machine(ENABLER))==(compute_enabling);
  Seen_Expanded_List_Invariant(Machine(CONTROLLER_daniel),Machine(ENABLER))==(btrue);
  Seen_Internal_List_Operations(Machine(CONTROLLER_daniel),Machine(SENSORS))==(update_sensors_states);
  Seen_List_Precondition(Machine(CONTROLLER_daniel),update_sensors_states)==(btrue);
  Seen_Expanded_List_Substitution(Machine(CONTROLLER_daniel),update_sensors_states)==(@(pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1).(pressure_sensor_l$1: PRESSURES & contact_sensor_a$1: BOOL & contact_sensor_b$1: BOOL & (not(pressure_sensor_l$1 = PRESSURE_A) => contact_sensor_a$1 = TRUE) & (not(pressure_sensor_l$1 = PRESSURE_B) => contact_sensor_b$1 = TRUE) ==> pressure_sensor_l,contact_sensor_a,contact_sensor_b:=pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1) || @(card_reader_a$0).(card_reader_a$0: BOOL ==> card_reader_a:=card_reader_a$0) || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0));
  Seen_List_Operations(Machine(CONTROLLER_daniel),Machine(SENSORS))==(update_sensors_states);
  Seen_Expanded_List_Invariant(Machine(CONTROLLER_daniel),Machine(SENSORS))==(btrue);
  Set_Definition(Machine(CONTROLLER_daniel),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Set_Definition(Machine(CONTROLLER_daniel),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Machine(CONTROLLER_daniel),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Machine(CONTROLLER_daniel),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER});
  Seen_Internal_List_Operations(Machine(CONTROLLER_daniel),Machine(CTX))==(?);
  Seen_List_Operations(Machine(CONTROLLER_daniel),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(CONTROLLER_daniel),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(CONTROLLER_daniel),get_status_daniel)==(?);
  List_ANY_Var(Machine(CONTROLLER_daniel),process_readers_daniel)==(?);
  List_ANY_Var(Machine(CONTROLLER_daniel),control_daniel)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CONTROLLER_daniel)) == (? | ? | ? | ? | get_status_daniel,process_readers_daniel,control_daniel | ? | seen(Machine(CTX)),seen(Machine(SENSORS)),seen(Machine(ENABLER)) | ? | CONTROLLER_daniel);
  List_Of_HiddenCst_Ids(Machine(CONTROLLER_daniel)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CONTROLLER_daniel)) == (?);
  List_Of_VisibleVar_Ids(Machine(CONTROLLER_daniel)) == (current_objective_d,current_authentication_d,current_action_d | ?);
  List_Of_Ids_SeenBNU(Machine(CONTROLLER_daniel)) == (?: ?);
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
  VisibleVariables(Machine(CONTROLLER_daniel)) == (Type(current_objective_d) == Mvv(etype(OBJECTIVES,?,?));Type(current_authentication_d) == Mvv(etype(AUTHENTICATED,?,?));Type(current_action_d) == Mvv(etype(ACTIONS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(CONTROLLER_daniel)) == (Type(control_daniel) == Cst(No_type,No_type);Type(process_readers_daniel) == Cst(No_type,No_type);Type(get_status_daniel) == Cst(etype(ACTIONS,?,?)*etype(AUTHENTICATED,?,?)*etype(OBJECTIVES,?,?),No_type));
  Observers(Machine(CONTROLLER_daniel)) == (Type(get_status_daniel) == Cst(etype(ACTIONS,?,?)*etype(AUTHENTICATED,?,?)*etype(OBJECTIVES,?,?),No_type))
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
