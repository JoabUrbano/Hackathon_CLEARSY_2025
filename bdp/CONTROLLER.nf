Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(CONTROLLER))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(CONTROLLER))==(Machine(CONTROLLER));
  Level(Machine(CONTROLLER))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(CONTROLLER)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(CONTROLLER))==(CTX,SENSORS,ENABLER)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(CONTROLLER))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(CONTROLLER))==(?);
  List_Includes(Machine(CONTROLLER))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(CONTROLLER))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(CONTROLLER))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(CONTROLLER))==(?);
  Context_List_Variables(Machine(CONTROLLER))==(?);
  Abstract_List_Variables(Machine(CONTROLLER))==(?);
  Local_List_Variables(Machine(CONTROLLER))==(?);
  List_Variables(Machine(CONTROLLER))==(?);
  External_List_Variables(Machine(CONTROLLER))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(CONTROLLER))==(?);
  Abstract_List_VisibleVariables(Machine(CONTROLLER))==(?);
  External_List_VisibleVariables(Machine(CONTROLLER))==(?);
  Expanded_List_VisibleVariables(Machine(CONTROLLER))==(?);
  List_VisibleVariables(Machine(CONTROLLER))==(current_objective,current_authentication,current_action);
  Internal_List_VisibleVariables(Machine(CONTROLLER))==(current_objective,current_authentication,current_action)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(CONTROLLER))==(btrue);
  Gluing_List_Invariant(Machine(CONTROLLER))==(btrue);
  Expanded_List_Invariant(Machine(CONTROLLER))==(btrue);
  Abstract_List_Invariant(Machine(CONTROLLER))==(btrue);
  Context_List_Invariant(Machine(CONTROLLER))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL & enable_door_a: BOOL & enable_door_b: BOOL & (enable_door_a = TRUE => enable_door_b = FALSE) & (enable_door_b = TRUE => enable_door_a = FALSE));
  List_Invariant(Machine(CONTROLLER))==(current_action: ACTIONS & current_authentication: AUTHENTICATED & current_objective: OBJECTIVES)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(CONTROLLER))==(btrue);
  Abstract_List_Assertions(Machine(CONTROLLER))==(btrue);
  Context_List_Assertions(Machine(CONTROLLER))==(btrue);
  List_Assertions(Machine(CONTROLLER))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(CONTROLLER))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(CONTROLLER))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(CONTROLLER))==(current_action,current_authentication,current_objective:=NONE,AUTHENTICATED_NONE,OBJ_NONE);
  Context_List_Initialisation(Machine(CONTROLLER))==(skip);
  List_Initialisation(Machine(CONTROLLER))==(current_action:=NONE || current_authentication:=AUTHENTICATED_NONE || current_objective:=OBJ_NONE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(CONTROLLER))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(CONTROLLER),Machine(CTX))==(?);
  List_Instanciated_Parameters(Machine(CONTROLLER),Machine(SENSORS))==(?);
  List_Instanciated_Parameters(Machine(CONTROLLER),Machine(ENABLER))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(CONTROLLER))==(btrue);
  List_Constraints(Machine(CONTROLLER))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(CONTROLLER))==(process_readers,control);
  List_Operations(Machine(CONTROLLER))==(process_readers,control)
END
&
THEORY ListInputX IS
  List_Input(Machine(CONTROLLER),process_readers)==(?);
  List_Input(Machine(CONTROLLER),control)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(CONTROLLER),process_readers)==(?);
  List_Output(Machine(CONTROLLER),control)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(CONTROLLER),process_readers)==(process_readers);
  List_Header(Machine(CONTROLLER),control)==(control)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(CONTROLLER),process_readers)==(btrue);
  List_Precondition(Machine(CONTROLLER),control)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(CONTROLLER),control)==(btrue | @(current_action$1,current_objective$1).(current_action$1: ACTIONS & current_objective$1: OBJECTIVES & (current_action$1 = TRANSLATE_OPEN_DOOR_A => pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE & contact_sensor_a = TRUE & current_objective$1 = OBJ_OPEN_DOOR_A) & (current_action$1 = TRANSLATE_OPEN_DOOR_B => pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE & contact_sensor_b = TRUE & current_objective$1 = OBJ_OPEN_DOOR_B) & (current_action$1 = TRANSLATE_CLOSE_DOOR_A => pressure_sensor_l = PRESSURE_A & contact_sensor_a = FALSE) & (current_action$1 = TRANSLATE_CLOSE_DOOR_B => pressure_sensor_l = PRESSURE_B & contact_sensor_b = FALSE) & (current_action$1 = ADAPT_PRESSURE_L_TO_A => pressure_sensor_l/=PRESSURE_A & contact_sensor_a = TRUE & contact_sensor_b = TRUE & current_objective$1 = OBJ_OPEN_DOOR_A) & (current_action$1 = ADAPT_PRESSURE_L_TO_B => pressure_sensor_l/=PRESSURE_B & contact_sensor_a = TRUE & contact_sensor_b = TRUE & current_objective$1 = OBJ_OPEN_DOOR_B) & (current_action$1 = NONE => current_objective$1 = OBJ_NONE) & (current_objective$1 = OBJ_OPEN_DOOR_A => contact_sensor_a = TRUE & (button_room_a_open_a = TRUE or button_room_l_open_a = TRUE) & (current_authentication = AUTHENTICATED_A or current_authentication = AUTHENTICATED_L)) & (current_objective$1 = OBJ_OPEN_DOOR_B => contact_sensor_b = TRUE & (button_room_b_open_b = TRUE or button_room_l_open_b = TRUE) & (current_authentication = AUTHENTICATED_B or current_authentication = AUTHENTICATED_L)) & (current_objective$1 = OBJ_NONE => button_room_a_open_a = FALSE & button_room_l_open_a = FALSE & button_room_l_open_b = FALSE & button_room_b_open_b = FALSE) ==> current_action,current_objective:=current_action$1,current_objective$1));
  Expanded_List_Substitution(Machine(CONTROLLER),process_readers)==(btrue | @(current_authentication$1).(current_authentication$1: AUTHENTICATED & (not(current_authentication$1 = AUTHENTICATED_NONE) => current_authentication: {AUTHENTICATED_NONE,current_authentication$1}) ==> current_authentication:=current_authentication$1));
  List_Substitution(Machine(CONTROLLER),process_readers)==(current_authentication: (current_authentication: AUTHENTICATED & (not(current_authentication = AUTHENTICATED_NONE) => current_authentication$0: {AUTHENTICATED_NONE,current_authentication})));
  List_Substitution(Machine(CONTROLLER),control)==(current_action,current_objective: (current_action: ACTIONS & current_objective: OBJECTIVES & (current_action = TRANSLATE_OPEN_DOOR_A => pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE & contact_sensor_a = TRUE & current_objective = OBJ_OPEN_DOOR_A) & (current_action = TRANSLATE_OPEN_DOOR_B => pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE & contact_sensor_b = TRUE & current_objective = OBJ_OPEN_DOOR_B) & (current_action = TRANSLATE_CLOSE_DOOR_A => pressure_sensor_l = PRESSURE_A & contact_sensor_a = FALSE) & (current_action = TRANSLATE_CLOSE_DOOR_B => pressure_sensor_l = PRESSURE_B & contact_sensor_b = FALSE) & (current_action = ADAPT_PRESSURE_L_TO_A => pressure_sensor_l/=PRESSURE_A & contact_sensor_a = TRUE & contact_sensor_b = TRUE & current_objective = OBJ_OPEN_DOOR_A) & (current_action = ADAPT_PRESSURE_L_TO_B => pressure_sensor_l/=PRESSURE_B & contact_sensor_a = TRUE & contact_sensor_b = TRUE & current_objective = OBJ_OPEN_DOOR_B) & (current_action = NONE => current_objective = OBJ_NONE) & (current_objective = OBJ_OPEN_DOOR_A => contact_sensor_a = TRUE & (button_room_a_open_a = TRUE or button_room_l_open_a = TRUE) & (current_authentication = AUTHENTICATED_A or current_authentication = AUTHENTICATED_L)) & (current_objective = OBJ_OPEN_DOOR_B => contact_sensor_b = TRUE & (button_room_b_open_b = TRUE or button_room_l_open_b = TRUE) & (current_authentication = AUTHENTICATED_B or current_authentication = AUTHENTICATED_L)) & (current_objective = OBJ_NONE => button_room_a_open_a = FALSE & button_room_l_open_a = FALSE & button_room_l_open_b = FALSE & button_room_b_open_b = FALSE)))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(CONTROLLER))==(?);
  Inherited_List_Constants(Machine(CONTROLLER))==(?);
  List_Constants(Machine(CONTROLLER))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(CONTROLLER),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Context_List_Enumerated(Machine(CONTROLLER))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Context_List_Defered(Machine(CONTROLLER))==(?);
  Context_List_Sets(Machine(CONTROLLER))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  List_Valuable_Sets(Machine(CONTROLLER))==(?);
  Inherited_List_Enumerated(Machine(CONTROLLER))==(?);
  Inherited_List_Defered(Machine(CONTROLLER))==(?);
  Inherited_List_Sets(Machine(CONTROLLER))==(?);
  List_Enumerated(Machine(CONTROLLER))==(?);
  List_Defered(Machine(CONTROLLER))==(?);
  List_Sets(Machine(CONTROLLER))==(?);
  Set_Definition(Machine(CONTROLLER),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Machine(CONTROLLER),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Machine(CONTROLLER),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(CONTROLLER))==(?);
  Expanded_List_HiddenConstants(Machine(CONTROLLER))==(?);
  List_HiddenConstants(Machine(CONTROLLER))==(?);
  External_List_HiddenConstants(Machine(CONTROLLER))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(CONTROLLER))==(btrue);
  Context_List_Properties(Machine(CONTROLLER))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Inherited_List_Properties(Machine(CONTROLLER))==(btrue);
  List_Properties(Machine(CONTROLLER))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(CONTROLLER),Machine(ENABLER))==(compute_enabling);
  Seen_Context_List_Enumerated(Machine(CONTROLLER))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Seen_Context_List_Invariant(Machine(CONTROLLER))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL);
  Seen_Context_List_Assertions(Machine(CONTROLLER))==(btrue);
  Seen_Context_List_Properties(Machine(CONTROLLER))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Seen_List_Constraints(Machine(CONTROLLER))==(btrue);
  Seen_List_Precondition(Machine(CONTROLLER),compute_enabling)==((pressure_sensor_l/=PRESSURE_A => contact_sensor_a = TRUE) & (pressure_sensor_l/=PRESSURE_B => contact_sensor_b = TRUE));
  Seen_Expanded_List_Substitution(Machine(CONTROLLER),compute_enabling)==(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE ==> enable_door_a,enable_door_b:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) ==> (pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE ==> enable_door_b,enable_door_a:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) ==> enable_door_a,enable_door_b:=FALSE,FALSE));
  Seen_List_Operations(Machine(CONTROLLER),Machine(ENABLER))==(compute_enabling);
  Seen_Expanded_List_Invariant(Machine(CONTROLLER),Machine(ENABLER))==(btrue);
  Seen_Internal_List_Operations(Machine(CONTROLLER),Machine(SENSORS))==(update_sensors_states);
  Seen_List_Precondition(Machine(CONTROLLER),update_sensors_states)==(btrue);
  Seen_Expanded_List_Substitution(Machine(CONTROLLER),update_sensors_states)==(@(pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1).(pressure_sensor_l$1: PRESSURES & contact_sensor_a$1: BOOL & contact_sensor_b$1: BOOL & (not(pressure_sensor_l$1 = PRESSURE_A) => contact_sensor_a$1 = TRUE) & (not(pressure_sensor_l$1 = PRESSURE_B) => contact_sensor_b$1 = TRUE) ==> pressure_sensor_l,contact_sensor_a,contact_sensor_b:=pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1) || @(card_reader_a$0).(card_reader_a$0: BOOL ==> card_reader_a:=card_reader_a$0) || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0));
  Seen_List_Operations(Machine(CONTROLLER),Machine(SENSORS))==(update_sensors_states);
  Seen_Expanded_List_Invariant(Machine(CONTROLLER),Machine(SENSORS))==(btrue);
  Set_Definition(Machine(CONTROLLER),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Set_Definition(Machine(CONTROLLER),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Machine(CONTROLLER),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Machine(CONTROLLER),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER});
  Seen_Internal_List_Operations(Machine(CONTROLLER),Machine(CTX))==(?);
  Seen_List_Operations(Machine(CONTROLLER),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(CONTROLLER),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(CONTROLLER),process_readers)==(?);
  List_ANY_Var(Machine(CONTROLLER),control)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CONTROLLER)) == (? | ? | ? | ? | process_readers,control | ? | seen(Machine(CTX)),seen(Machine(SENSORS)),seen(Machine(ENABLER)) | ? | CONTROLLER);
  List_Of_HiddenCst_Ids(Machine(CONTROLLER)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CONTROLLER)) == (?);
  List_Of_VisibleVar_Ids(Machine(CONTROLLER)) == (current_objective,current_authentication,current_action | ?);
  List_Of_Ids_SeenBNU(Machine(CONTROLLER)) == (?: ?);
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
  VisibleVariables(Machine(CONTROLLER)) == (Type(current_objective) == Mvv(etype(OBJECTIVES,?,?));Type(current_authentication) == Mvv(etype(AUTHENTICATED,?,?));Type(current_action) == Mvv(etype(ACTIONS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(CONTROLLER)) == (Type(control) == Cst(No_type,No_type);Type(process_readers) == Cst(No_type,No_type))
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
