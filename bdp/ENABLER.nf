Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ENABLER))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ENABLER))==(Machine(ENABLER));
  Level(Machine(ENABLER))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ENABLER)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ENABLER))==(CTX,SENSORS)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ENABLER))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ENABLER))==(?);
  List_Includes(Machine(ENABLER))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ENABLER))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ENABLER))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ENABLER))==(?);
  Context_List_Variables(Machine(ENABLER))==(?);
  Abstract_List_Variables(Machine(ENABLER))==(?);
  Local_List_Variables(Machine(ENABLER))==(?);
  List_Variables(Machine(ENABLER))==(?);
  External_List_Variables(Machine(ENABLER))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ENABLER))==(?);
  Abstract_List_VisibleVariables(Machine(ENABLER))==(?);
  External_List_VisibleVariables(Machine(ENABLER))==(?);
  Expanded_List_VisibleVariables(Machine(ENABLER))==(?);
  List_VisibleVariables(Machine(ENABLER))==(enable_door_b,enable_door_a);
  Internal_List_VisibleVariables(Machine(ENABLER))==(enable_door_b,enable_door_a)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ENABLER))==(btrue);
  Gluing_List_Invariant(Machine(ENABLER))==(btrue);
  Expanded_List_Invariant(Machine(ENABLER))==(btrue);
  Abstract_List_Invariant(Machine(ENABLER))==(btrue);
  Context_List_Invariant(Machine(ENABLER))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL);
  List_Invariant(Machine(ENABLER))==(enable_door_a: BOOL & enable_door_b: BOOL & (enable_door_a = TRUE => enable_door_b = FALSE) & (enable_door_b = TRUE => enable_door_a = FALSE))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ENABLER))==(btrue);
  Abstract_List_Assertions(Machine(ENABLER))==(btrue);
  Context_List_Assertions(Machine(ENABLER))==(btrue);
  List_Assertions(Machine(ENABLER))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ENABLER))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ENABLER))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ENABLER))==(enable_door_a,enable_door_b:=FALSE,FALSE);
  Context_List_Initialisation(Machine(ENABLER))==(skip);
  List_Initialisation(Machine(ENABLER))==(enable_door_a:=FALSE || enable_door_b:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ENABLER))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(ENABLER),Machine(CTX))==(?);
  List_Instanciated_Parameters(Machine(ENABLER),Machine(SENSORS))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ENABLER))==(btrue);
  List_Constraints(Machine(ENABLER))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ENABLER))==(compute_enabling);
  List_Operations(Machine(ENABLER))==(compute_enabling)
END
&
THEORY ListInputX IS
  List_Input(Machine(ENABLER),compute_enabling)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(ENABLER),compute_enabling)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(ENABLER),compute_enabling)==(compute_enabling)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(ENABLER),compute_enabling)==((pressure_sensor_l/=PRESSURE_A => contact_sensor_a = TRUE) & (pressure_sensor_l/=PRESSURE_B => contact_sensor_b = TRUE))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(ENABLER),compute_enabling)==((pressure_sensor_l/=PRESSURE_A => contact_sensor_a = TRUE) & (pressure_sensor_l/=PRESSURE_B => contact_sensor_b = TRUE) | pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE ==> enable_door_a,enable_door_b:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) ==> (pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE ==> enable_door_b,enable_door_a:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) ==> enable_door_a,enable_door_b:=FALSE,FALSE));
  List_Substitution(Machine(ENABLER),compute_enabling)==(IF pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE THEN enable_door_a:=FALSE || enable_door_b:=TRUE ELSE IF pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE THEN enable_door_b:=FALSE || enable_door_a:=TRUE ELSE enable_door_a:=FALSE || enable_door_b:=FALSE END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ENABLER))==(?);
  Inherited_List_Constants(Machine(ENABLER))==(?);
  List_Constants(Machine(ENABLER))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(ENABLER),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Context_List_Enumerated(Machine(ENABLER))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Context_List_Defered(Machine(ENABLER))==(?);
  Context_List_Sets(Machine(ENABLER))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  List_Valuable_Sets(Machine(ENABLER))==(?);
  Inherited_List_Enumerated(Machine(ENABLER))==(?);
  Inherited_List_Defered(Machine(ENABLER))==(?);
  Inherited_List_Sets(Machine(ENABLER))==(?);
  List_Enumerated(Machine(ENABLER))==(?);
  List_Defered(Machine(ENABLER))==(?);
  List_Sets(Machine(ENABLER))==(?);
  Set_Definition(Machine(ENABLER),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Machine(ENABLER),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Machine(ENABLER),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ENABLER))==(?);
  Expanded_List_HiddenConstants(Machine(ENABLER))==(?);
  List_HiddenConstants(Machine(ENABLER))==(?);
  External_List_HiddenConstants(Machine(ENABLER))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ENABLER))==(btrue);
  Context_List_Properties(Machine(ENABLER))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Inherited_List_Properties(Machine(ENABLER))==(btrue);
  List_Properties(Machine(ENABLER))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(ENABLER),Machine(SENSORS))==(update_sensors_states);
  Seen_Context_List_Enumerated(Machine(ENABLER))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Seen_Context_List_Invariant(Machine(ENABLER))==(btrue);
  Seen_Context_List_Assertions(Machine(ENABLER))==(btrue);
  Seen_Context_List_Properties(Machine(ENABLER))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Seen_List_Constraints(Machine(ENABLER))==(btrue);
  Seen_List_Precondition(Machine(ENABLER),update_sensors_states)==(btrue);
  Seen_Expanded_List_Substitution(Machine(ENABLER),update_sensors_states)==(@(pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1).(pressure_sensor_l$1: PRESSURES & contact_sensor_a$1: BOOL & contact_sensor_b$1: BOOL & (not(pressure_sensor_l$1 = PRESSURE_A) => contact_sensor_a$1 = TRUE) & (not(pressure_sensor_l$1 = PRESSURE_B) => contact_sensor_b$1 = TRUE) ==> pressure_sensor_l,contact_sensor_a,contact_sensor_b:=pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1) || @(card_reader_a$0).(card_reader_a$0: BOOL ==> card_reader_a:=card_reader_a$0) || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0));
  Seen_List_Operations(Machine(ENABLER),Machine(SENSORS))==(update_sensors_states);
  Seen_Expanded_List_Invariant(Machine(ENABLER),Machine(SENSORS))==(btrue);
  Set_Definition(Machine(ENABLER),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Set_Definition(Machine(ENABLER),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Machine(ENABLER),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Machine(ENABLER),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER});
  Seen_Internal_List_Operations(Machine(ENABLER),Machine(CTX))==(?);
  Seen_List_Operations(Machine(ENABLER),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(ENABLER),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(ENABLER),compute_enabling)==(?)
END
&
THEORY ListOfIdsX IS
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
  VisibleVariables(Machine(ENABLER)) == (Type(enable_door_b) == Mvv(btype(BOOL,?,?));Type(enable_door_a) == Mvv(btype(BOOL,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(ENABLER)) == (Type(compute_enabling) == Cst(No_type,No_type))
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
