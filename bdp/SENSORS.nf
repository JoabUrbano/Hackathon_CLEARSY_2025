Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(SENSORS))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(SENSORS))==(Machine(SENSORS));
  Level(Machine(SENSORS))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(SENSORS)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(SENSORS))==(CTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(SENSORS))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(SENSORS))==(?);
  List_Includes(Machine(SENSORS))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(SENSORS))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(SENSORS))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(SENSORS))==(?);
  Context_List_Variables(Machine(SENSORS))==(?);
  Abstract_List_Variables(Machine(SENSORS))==(?);
  Local_List_Variables(Machine(SENSORS))==(?);
  List_Variables(Machine(SENSORS))==(?);
  External_List_Variables(Machine(SENSORS))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(SENSORS))==(?);
  Abstract_List_VisibleVariables(Machine(SENSORS))==(?);
  External_List_VisibleVariables(Machine(SENSORS))==(?);
  Expanded_List_VisibleVariables(Machine(SENSORS))==(?);
  List_VisibleVariables(Machine(SENSORS))==(button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l);
  Internal_List_VisibleVariables(Machine(SENSORS))==(button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SENSORS))==(btrue);
  Gluing_List_Invariant(Machine(SENSORS))==(btrue);
  Expanded_List_Invariant(Machine(SENSORS))==(btrue);
  Abstract_List_Invariant(Machine(SENSORS))==(btrue);
  Context_List_Invariant(Machine(SENSORS))==(btrue);
  List_Invariant(Machine(SENSORS))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(SENSORS))==(btrue);
  Abstract_List_Assertions(Machine(SENSORS))==(btrue);
  Context_List_Assertions(Machine(SENSORS))==(btrue);
  List_Assertions(Machine(SENSORS))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(SENSORS))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(SENSORS))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(SENSORS))==(@(pressure_sensor_l$0).(pressure_sensor_l$0: PRESSURES ==> pressure_sensor_l:=pressure_sensor_l$0) || @(contact_sensor_a$0).(contact_sensor_a$0: BOOL ==> contact_sensor_a:=contact_sensor_a$0) || @(contact_sensor_b$0).(contact_sensor_b$0: BOOL ==> contact_sensor_b:=contact_sensor_b$0) || card_reader_a:=FALSE || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0));
  Context_List_Initialisation(Machine(SENSORS))==(skip);
  List_Initialisation(Machine(SENSORS))==(pressure_sensor_l:: PRESSURES || contact_sensor_a:: BOOL || contact_sensor_b:: BOOL || card_reader_a:=FALSE || card_reader_l:: BOOL || card_reader_b:: BOOL || button_room_a_open_a:: BOOL || button_room_l_open_a:: BOOL || button_room_l_open_b:: BOOL || button_room_b_open_b:: BOOL)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(SENSORS))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(SENSORS),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(SENSORS))==(btrue);
  List_Constraints(Machine(SENSORS))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(SENSORS))==(update_sensors_states);
  List_Operations(Machine(SENSORS))==(update_sensors_states)
END
&
THEORY ListInputX IS
  List_Input(Machine(SENSORS),update_sensors_states)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(SENSORS),update_sensors_states)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(SENSORS),update_sensors_states)==(update_sensors_states)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(SENSORS),update_sensors_states)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(SENSORS),update_sensors_states)==(btrue | @(pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1).(pressure_sensor_l$1: PRESSURES & contact_sensor_a$1: BOOL & contact_sensor_b$1: BOOL & (not(pressure_sensor_l$1 = PRESSURE_A) => contact_sensor_a$1 = TRUE) & (not(pressure_sensor_l$1 = PRESSURE_B) => contact_sensor_b$1 = TRUE) ==> pressure_sensor_l,contact_sensor_a,contact_sensor_b:=pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1) || @(card_reader_a$0).(card_reader_a$0: BOOL ==> card_reader_a:=card_reader_a$0) || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0));
  List_Substitution(Machine(SENSORS),update_sensors_states)==(pressure_sensor_l,contact_sensor_a,contact_sensor_b: (pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & (not(pressure_sensor_l = PRESSURE_A) => contact_sensor_a = TRUE) & (not(pressure_sensor_l = PRESSURE_B) => contact_sensor_b = TRUE)) || card_reader_a:: BOOL || card_reader_l:: BOOL || card_reader_b:: BOOL || button_room_a_open_a:: BOOL || button_room_l_open_a:: BOOL || button_room_l_open_b:: BOOL || button_room_b_open_b:: BOOL)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SENSORS))==(?);
  Inherited_List_Constants(Machine(SENSORS))==(?);
  List_Constants(Machine(SENSORS))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(SENSORS),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Context_List_Enumerated(Machine(SENSORS))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Context_List_Defered(Machine(SENSORS))==(?);
  Context_List_Sets(Machine(SENSORS))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  List_Valuable_Sets(Machine(SENSORS))==(?);
  Inherited_List_Enumerated(Machine(SENSORS))==(?);
  Inherited_List_Defered(Machine(SENSORS))==(?);
  Inherited_List_Sets(Machine(SENSORS))==(?);
  List_Enumerated(Machine(SENSORS))==(?);
  List_Defered(Machine(SENSORS))==(?);
  List_Sets(Machine(SENSORS))==(?);
  Set_Definition(Machine(SENSORS),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Machine(SENSORS),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Machine(SENSORS),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(SENSORS))==(?);
  Expanded_List_HiddenConstants(Machine(SENSORS))==(?);
  List_HiddenConstants(Machine(SENSORS))==(?);
  External_List_HiddenConstants(Machine(SENSORS))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(SENSORS))==(btrue);
  Context_List_Properties(Machine(SENSORS))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Inherited_List_Properties(Machine(SENSORS))==(btrue);
  List_Properties(Machine(SENSORS))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(SENSORS),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Machine(SENSORS))==(?);
  Seen_Context_List_Invariant(Machine(SENSORS))==(btrue);
  Seen_Context_List_Assertions(Machine(SENSORS))==(btrue);
  Seen_Context_List_Properties(Machine(SENSORS))==(btrue);
  Seen_List_Constraints(Machine(SENSORS))==(btrue);
  Seen_List_Operations(Machine(SENSORS),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(SENSORS),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(SENSORS),update_sensors_states)==(?)
END
&
THEORY ListOfIdsX IS
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
  VisibleVariables(Machine(SENSORS)) == (Type(button_room_b_open_b) == Mvv(btype(BOOL,?,?));Type(button_room_l_open_b) == Mvv(btype(BOOL,?,?));Type(button_room_l_open_a) == Mvv(btype(BOOL,?,?));Type(button_room_a_open_a) == Mvv(btype(BOOL,?,?));Type(card_reader_b) == Mvv(btype(BOOL,?,?));Type(card_reader_l) == Mvv(btype(BOOL,?,?));Type(card_reader_a) == Mvv(btype(BOOL,?,?));Type(contact_sensor_b) == Mvv(btype(BOOL,?,?));Type(contact_sensor_a) == Mvv(btype(BOOL,?,?));Type(pressure_sensor_l) == Mvv(etype(PRESSURES,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(SENSORS)) == (Type(update_sensors_states) == Cst(No_type,No_type))
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
