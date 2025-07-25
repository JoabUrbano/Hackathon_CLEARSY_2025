Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(CONTROLLER_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(CONTROLLER_i))==(Machine(CONTROLLER));
  Level(Implementation(CONTROLLER_i))==(1);
  Upper_Level(Implementation(CONTROLLER_i))==(Machine(CONTROLLER))
END
&
THEORY LoadedStructureX IS
  Implementation(CONTROLLER_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(CONTROLLER_i))==(CTX,SENSORS,ENABLER)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(CONTROLLER_i))==(?);
  Inherited_List_Includes(Implementation(CONTROLLER_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(CONTROLLER_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(CONTROLLER_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(CONTROLLER_i))==(?);
  Context_List_Variables(Implementation(CONTROLLER_i))==(?);
  Abstract_List_Variables(Implementation(CONTROLLER_i))==(?);
  Local_List_Variables(Implementation(CONTROLLER_i))==(?);
  List_Variables(Implementation(CONTROLLER_i))==(?);
  External_List_Variables(Implementation(CONTROLLER_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(CONTROLLER_i))==(current_objective,current_authentication,current_action);
  Abstract_List_VisibleVariables(Implementation(CONTROLLER_i))==(current_objective,current_authentication,current_action);
  External_List_VisibleVariables(Implementation(CONTROLLER_i))==(?);
  Expanded_List_VisibleVariables(Implementation(CONTROLLER_i))==(?);
  List_VisibleVariables(Implementation(CONTROLLER_i))==(?);
  Internal_List_VisibleVariables(Implementation(CONTROLLER_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(CONTROLLER_i))==(btrue);
  Expanded_List_Invariant(Implementation(CONTROLLER_i))==(btrue);
  Abstract_List_Invariant(Implementation(CONTROLLER_i))==(current_action: ACTIONS & current_authentication: AUTHENTICATED & current_objective: OBJECTIVES);
  Context_List_Invariant(Implementation(CONTROLLER_i))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL & enable_door_a: BOOL & enable_door_b: BOOL & (enable_door_a = TRUE => enable_door_b = FALSE) & (enable_door_b = TRUE => enable_door_a = FALSE));
  List_Invariant(Implementation(CONTROLLER_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(CONTROLLER_i))==(btrue);
  Abstract_List_Assertions(Implementation(CONTROLLER_i))==(btrue);
  Context_List_Assertions(Implementation(CONTROLLER_i))==(btrue);
  List_Assertions(Implementation(CONTROLLER_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(CONTROLLER_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(CONTROLLER_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(CONTROLLER_i))==(current_action:=NONE;current_authentication:=AUTHENTICATED_NONE;current_objective:=OBJ_NONE);
  Context_List_Initialisation(Implementation(CONTROLLER_i))==(skip);
  List_Initialisation(Implementation(CONTROLLER_i))==(current_action:=NONE;current_authentication:=AUTHENTICATED_NONE;current_objective:=OBJ_NONE)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(CONTROLLER_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(CONTROLLER_i),Machine(CTX))==(?);
  List_Instanciated_Parameters(Implementation(CONTROLLER_i),Machine(SENSORS))==(?);
  List_Instanciated_Parameters(Implementation(CONTROLLER_i),Machine(ENABLER))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(CONTROLLER_i))==(btrue);
  List_Context_Constraints(Implementation(CONTROLLER_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(CONTROLLER_i))==(process_readers,control);
  List_Operations(Implementation(CONTROLLER_i))==(process_readers,control)
END
&
THEORY ListInputX IS
  List_Input(Implementation(CONTROLLER_i),process_readers)==(?);
  List_Input(Implementation(CONTROLLER_i),control)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(CONTROLLER_i),process_readers)==(?);
  List_Output(Implementation(CONTROLLER_i),control)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(CONTROLLER_i),process_readers)==(process_readers);
  List_Header(Implementation(CONTROLLER_i),control)==(control)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(CONTROLLER_i),process_readers)==(btrue);
  List_Precondition(Implementation(CONTROLLER_i),process_readers)==(btrue);
  Own_Precondition(Implementation(CONTROLLER_i),control)==(btrue);
  List_Precondition(Implementation(CONTROLLER_i),control)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(CONTROLLER_i),control)==(btrue | current_objective = OBJ_OPEN_DOOR_A & current_action = TRANSLATE_OPEN_DOOR_A or (current_objective = OBJ_OPEN_DOOR_B & current_action = TRANSLATE_OPEN_DOOR_B) ==> current_objective:=OBJ_NONE [] not(current_objective = OBJ_OPEN_DOOR_A & current_action = TRANSLATE_OPEN_DOOR_A or (current_objective = OBJ_OPEN_DOOR_B & current_action = TRANSLATE_OPEN_DOOR_B)) ==> (current_authentication = AUTHENTICATED_A or current_authentication = AUTHENTICATED_L ==> (button_room_a_open_a = TRUE or button_room_l_open_a = TRUE ==> current_objective:=OBJ_OPEN_DOOR_A [] not(button_room_a_open_a = TRUE or button_room_l_open_a = TRUE) ==> skip) [] not(current_authentication = AUTHENTICATED_A or current_authentication = AUTHENTICATED_L) ==> (current_authentication = AUTHENTICATED_B or current_authentication = AUTHENTICATED_L ==> (button_room_b_open_b = TRUE or button_room_l_open_b = TRUE ==> current_objective:=OBJ_OPEN_DOOR_B [] not(button_room_b_open_b = TRUE or button_room_l_open_b = TRUE) ==> skip) [] not(current_authentication = AUTHENTICATED_B or current_authentication = AUTHENTICATED_L) ==> skip));(current_objective = OBJ_OPEN_DOOR_A ==> (pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE ==> current_action:=TRANSLATE_OPEN_DOOR_A [] not(pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) ==> (pressure_sensor_l/=PRESSURE_A & contact_sensor_a = TRUE & contact_sensor_b = TRUE ==> current_action:=ADAPT_PRESSURE_L_TO_A [] not(pressure_sensor_l/=PRESSURE_A & contact_sensor_a = TRUE & contact_sensor_b = TRUE) ==> (contact_sensor_b = FALSE ==> current_action:=TRANSLATE_CLOSE_DOOR_B [] not(contact_sensor_b = FALSE) ==> skip))) [] not(current_objective = OBJ_OPEN_DOOR_A) ==> (current_objective = OBJ_OPEN_DOOR_B ==> (pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE ==> current_action:=TRANSLATE_OPEN_DOOR_B [] not(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) ==> (pressure_sensor_l/=PRESSURE_B & contact_sensor_a = TRUE & contact_sensor_b = TRUE ==> current_action:=ADAPT_PRESSURE_L_TO_B [] not(pressure_sensor_l/=PRESSURE_B & contact_sensor_a = TRUE & contact_sensor_b = TRUE) ==> (contact_sensor_a = FALSE ==> current_action:=TRANSLATE_CLOSE_DOOR_A [] not(contact_sensor_a = FALSE) ==> skip))) [] not(current_objective = OBJ_OPEN_DOOR_B) ==> current_action:=NONE)));
  Expanded_List_Substitution(Implementation(CONTROLLER_i),process_readers)==(btrue | current_authentication = AUTHENTICATED_NONE ==> (card_reader_a = TRUE ==> current_authentication:=AUTHENTICATED_A [] not(card_reader_a = TRUE) ==> (card_reader_b = TRUE ==> current_authentication:=AUTHENTICATED_B [] not(card_reader_b = TRUE) ==> (card_reader_l = TRUE ==> current_authentication:=AUTHENTICATED_L [] not(card_reader_l = TRUE) ==> skip))) [] not(current_authentication = AUTHENTICATED_NONE) ==> skip);
  List_Substitution(Implementation(CONTROLLER_i),process_readers)==(IF current_authentication = AUTHENTICATED_NONE THEN IF card_reader_a = TRUE THEN current_authentication:=AUTHENTICATED_A ELSIF card_reader_b = TRUE THEN current_authentication:=AUTHENTICATED_B ELSIF card_reader_l = TRUE THEN current_authentication:=AUTHENTICATED_L END END);
  List_Substitution(Implementation(CONTROLLER_i),control)==(IF current_objective = OBJ_OPEN_DOOR_A & current_action = TRANSLATE_OPEN_DOOR_A or (current_objective = OBJ_OPEN_DOOR_B & current_action = TRANSLATE_OPEN_DOOR_B) THEN current_objective:=OBJ_NONE ELSIF current_authentication = AUTHENTICATED_A or current_authentication = AUTHENTICATED_L THEN IF button_room_a_open_a = TRUE or button_room_l_open_a = TRUE THEN current_objective:=OBJ_OPEN_DOOR_A END ELSIF current_authentication = AUTHENTICATED_B or current_authentication = AUTHENTICATED_L THEN IF button_room_b_open_b = TRUE or button_room_l_open_b = TRUE THEN current_objective:=OBJ_OPEN_DOOR_B END END;IF current_objective = OBJ_OPEN_DOOR_A THEN IF pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE THEN current_action:=TRANSLATE_OPEN_DOOR_A ELSIF pressure_sensor_l/=PRESSURE_A & contact_sensor_a = TRUE & contact_sensor_b = TRUE THEN current_action:=ADAPT_PRESSURE_L_TO_A ELSIF contact_sensor_b = FALSE THEN current_action:=TRANSLATE_CLOSE_DOOR_B END ELSIF current_objective = OBJ_OPEN_DOOR_B THEN IF pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE THEN current_action:=TRANSLATE_OPEN_DOOR_B ELSIF pressure_sensor_l/=PRESSURE_B & contact_sensor_a = TRUE & contact_sensor_b = TRUE THEN current_action:=ADAPT_PRESSURE_L_TO_B ELSIF contact_sensor_a = FALSE THEN current_action:=TRANSLATE_CLOSE_DOOR_A END ELSE current_action:=NONE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(CONTROLLER_i))==(?);
  Inherited_List_Constants(Implementation(CONTROLLER_i))==(?);
  List_Constants(Implementation(CONTROLLER_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(CONTROLLER_i),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Context_List_Enumerated(Implementation(CONTROLLER_i))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Context_List_Defered(Implementation(CONTROLLER_i))==(?);
  Context_List_Sets(Implementation(CONTROLLER_i))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  List_Own_Enumerated(Implementation(CONTROLLER_i))==(?);
  List_Valuable_Sets(Implementation(CONTROLLER_i))==(?);
  Inherited_List_Enumerated(Implementation(CONTROLLER_i))==(?);
  Inherited_List_Defered(Implementation(CONTROLLER_i))==(?);
  Inherited_List_Sets(Implementation(CONTROLLER_i))==(?);
  List_Enumerated(Implementation(CONTROLLER_i))==(?);
  List_Defered(Implementation(CONTROLLER_i))==(?);
  List_Sets(Implementation(CONTROLLER_i))==(?);
  Set_Definition(Implementation(CONTROLLER_i),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Implementation(CONTROLLER_i),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Implementation(CONTROLLER_i),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(CONTROLLER_i))==(?);
  Expanded_List_HiddenConstants(Implementation(CONTROLLER_i))==(?);
  List_HiddenConstants(Implementation(CONTROLLER_i))==(?);
  External_List_HiddenConstants(Implementation(CONTROLLER_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(CONTROLLER_i))==(btrue);
  Context_List_Properties(Implementation(CONTROLLER_i))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Inherited_List_Properties(Implementation(CONTROLLER_i))==(btrue);
  List_Properties(Implementation(CONTROLLER_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(CONTROLLER_i))==(aa: aa);
  List_Values(Implementation(CONTROLLER_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(CONTROLLER_i),Machine(ENABLER))==(compute_enabling);
  Seen_Context_List_Enumerated(Implementation(CONTROLLER_i))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Seen_Context_List_Invariant(Implementation(CONTROLLER_i))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL);
  Seen_Context_List_Assertions(Implementation(CONTROLLER_i))==(btrue);
  Seen_Context_List_Properties(Implementation(CONTROLLER_i))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  Seen_List_Constraints(Implementation(CONTROLLER_i))==(btrue);
  Seen_List_Precondition(Implementation(CONTROLLER_i),compute_enabling)==((pressure_sensor_l/=PRESSURE_A => contact_sensor_a = TRUE) & (pressure_sensor_l/=PRESSURE_B => contact_sensor_b = TRUE));
  Seen_Expanded_List_Substitution(Implementation(CONTROLLER_i),compute_enabling)==(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE ==> enable_door_a,enable_door_b:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) ==> (pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE ==> enable_door_b,enable_door_a:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) ==> enable_door_a,enable_door_b:=FALSE,FALSE));
  Seen_List_Operations(Implementation(CONTROLLER_i),Machine(ENABLER))==(compute_enabling);
  Seen_Expanded_List_Invariant(Implementation(CONTROLLER_i),Machine(ENABLER))==(btrue);
  Seen_Internal_List_Operations(Implementation(CONTROLLER_i),Machine(SENSORS))==(update_sensors_states);
  Seen_List_Precondition(Implementation(CONTROLLER_i),update_sensors_states)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(CONTROLLER_i),update_sensors_states)==(@(pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1).(pressure_sensor_l$1: PRESSURES & contact_sensor_a$1: BOOL & contact_sensor_b$1: BOOL & (not(pressure_sensor_l$1 = PRESSURE_A) => contact_sensor_a$1 = TRUE) & (not(pressure_sensor_l$1 = PRESSURE_B) => contact_sensor_b$1 = TRUE) ==> pressure_sensor_l,contact_sensor_a,contact_sensor_b:=pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1) || @(card_reader_a$0).(card_reader_a$0: BOOL ==> card_reader_a:=card_reader_a$0) || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0));
  Seen_List_Operations(Implementation(CONTROLLER_i),Machine(SENSORS))==(update_sensors_states);
  Seen_Expanded_List_Invariant(Implementation(CONTROLLER_i),Machine(SENSORS))==(btrue);
  Set_Definition(Implementation(CONTROLLER_i),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Set_Definition(Implementation(CONTROLLER_i),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Implementation(CONTROLLER_i),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Implementation(CONTROLLER_i),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER});
  Seen_Internal_List_Operations(Implementation(CONTROLLER_i),Machine(CTX))==(?);
  Seen_List_Operations(Implementation(CONTROLLER_i),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Implementation(CONTROLLER_i),Machine(CTX))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(CONTROLLER_i),Machine(ENABLER))==(compute_enabling);
  List_Included_Operations(Implementation(CONTROLLER_i),Machine(SENSORS))==(update_sensors_states)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(CONTROLLER_i))==(Type(control) == Cst(No_type,No_type);Type(process_readers) == Cst(No_type,No_type));
  VisibleVariables(Implementation(CONTROLLER_i))==(Type(current_objective) == Mvv(etype(OBJECTIVES,?,?));Type(current_authentication) == Mvv(etype(AUTHENTICATED,?,?));Type(current_action) == Mvv(etype(ACTIONS,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants_Env(Implementation(CONTROLLER_i),Machine(CTX))==(Type(PRESSURE_A) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_B) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_OTHER) == Cst(etype(PRESSURES,0,2));Type(OBJ_OPEN_DOOR_A) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_OPEN_DOOR_B) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_NONE) == Cst(etype(OBJECTIVES,0,2));Type(NONE) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_A) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_B) == Cst(etype(ACTIONS,0,6));Type(AUTHENTICATED_A) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_L) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_B) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_NONE) == Cst(etype(AUTHENTICATED,0,3)));
  Enumerate_Definition(Implementation(CONTROLLER_i),Machine(CTX),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Enumerate_Definition(Implementation(CONTROLLER_i),Machine(CTX),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Enumerate_Definition(Implementation(CONTROLLER_i),Machine(CTX),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Enumerate_Definition(Implementation(CONTROLLER_i),Machine(CTX),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(CONTROLLER_i)) == (? | ? | ? | ? | process_readers,control | ? | seen(Machine(CTX)),seen(Machine(SENSORS)),seen(Machine(ENABLER)) | ? | CONTROLLER_i);
  List_Of_HiddenCst_Ids(Implementation(CONTROLLER_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(CONTROLLER_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(CONTROLLER_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(CONTROLLER_i)) == (?: ?);
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
  VisibleVariables(Implementation(CONTROLLER_i)) == (Type(current_action) == Mvv(etype(ACTIONS,?,?));Type(current_authentication) == Mvv(etype(AUTHENTICATED,?,?));Type(current_objective) == Mvv(etype(OBJECTIVES,?,?)))
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
  List_Local_Operations(Implementation(CONTROLLER_i))==(?)
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
  TypingPredicate(Implementation(CONTROLLER_i))==(current_objective: OBJECTIVES & current_authentication: AUTHENTICATED & current_action: ACTIONS)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
