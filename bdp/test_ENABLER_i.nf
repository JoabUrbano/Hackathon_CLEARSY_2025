﻿Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(test_ENABLER_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(test_ENABLER_i))==(Machine(test_ENABLER));
  Level(Implementation(test_ENABLER_i))==(1);
  Upper_Level(Implementation(test_ENABLER_i))==(Machine(test_ENABLER))
END
&
THEORY LoadedStructureX IS
  Implementation(test_ENABLER_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(test_ENABLER_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(test_ENABLER_i))==(CTX,SENSORS,ENABLER);
  Inherited_List_Includes(Implementation(test_ENABLER_i))==(ENABLER,SENSORS,CTX)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(test_ENABLER_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(test_ENABLER_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(test_ENABLER_i))==(?);
  Context_List_Variables(Implementation(test_ENABLER_i))==(?);
  Abstract_List_Variables(Implementation(test_ENABLER_i))==(?);
  Local_List_Variables(Implementation(test_ENABLER_i))==(?);
  List_Variables(Implementation(test_ENABLER_i))==(?);
  External_List_Variables(Implementation(test_ENABLER_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(test_ENABLER_i))==(?);
  Abstract_List_VisibleVariables(Implementation(test_ENABLER_i))==(?);
  External_List_VisibleVariables(Implementation(test_ENABLER_i))==(button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l,enable_door_b,enable_door_a);
  Expanded_List_VisibleVariables(Implementation(test_ENABLER_i))==(button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l,enable_door_b,enable_door_a);
  List_VisibleVariables(Implementation(test_ENABLER_i))==(?);
  Internal_List_VisibleVariables(Implementation(test_ENABLER_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(test_ENABLER_i))==(btrue);
  Abstract_List_Invariant(Implementation(test_ENABLER_i))==(btrue);
  Expanded_List_Invariant(Implementation(test_ENABLER_i))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL & enable_door_a: BOOL & enable_door_b: BOOL & (enable_door_a = TRUE => enable_door_b = FALSE) & (enable_door_b = TRUE => enable_door_a = FALSE));
  Context_List_Invariant(Implementation(test_ENABLER_i))==(btrue);
  List_Invariant(Implementation(test_ENABLER_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(test_ENABLER_i))==(btrue);
  Expanded_List_Assertions(Implementation(test_ENABLER_i))==(btrue);
  Context_List_Assertions(Implementation(test_ENABLER_i))==(btrue);
  List_Assertions(Implementation(test_ENABLER_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(test_ENABLER_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(test_ENABLER_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(test_ENABLER_i))==(@(pressure_sensor_l$0).(pressure_sensor_l$0: PRESSURES ==> pressure_sensor_l:=pressure_sensor_l$0) || @(contact_sensor_a$0).(contact_sensor_a$0: BOOL ==> contact_sensor_a:=contact_sensor_a$0) || @(contact_sensor_b$0).(contact_sensor_b$0: BOOL ==> contact_sensor_b:=contact_sensor_b$0) || card_reader_a:=FALSE || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0);enable_door_a,enable_door_b:=FALSE,FALSE);
  Context_List_Initialisation(Implementation(test_ENABLER_i))==(skip);
  List_Initialisation(Implementation(test_ENABLER_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(test_ENABLER_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(test_ENABLER_i),Machine(CTX))==(?);
  List_Instanciated_Parameters(Implementation(test_ENABLER_i),Machine(SENSORS))==(?);
  List_Instanciated_Parameters(Implementation(test_ENABLER_i),Machine(ENABLER))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(test_ENABLER_i),Machine(ENABLER))==(btrue);
  List_Constraints(Implementation(test_ENABLER_i))==(btrue);
  List_Context_Constraints(Implementation(test_ENABLER_i))==(btrue);
  List_Constraints(Implementation(test_ENABLER_i),Machine(SENSORS))==(btrue);
  List_Constraints(Implementation(test_ENABLER_i),Machine(CTX))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(test_ENABLER_i))==(test_compute_enabling);
  List_Operations(Implementation(test_ENABLER_i))==(test_compute_enabling)
END
&
THEORY ListInputX IS
  List_Input(Implementation(test_ENABLER_i),test_compute_enabling)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(test_ENABLER_i),test_compute_enabling)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(test_ENABLER_i),test_compute_enabling)==(test_compute_enabling)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(test_ENABLER_i),test_compute_enabling)==(btrue);
  List_Precondition(Implementation(test_ENABLER_i),test_compute_enabling)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(test_ENABLER_i),test_compute_enabling)==(btrue | (btrue | @(pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1).(pressure_sensor_l$1: PRESSURES & contact_sensor_a$1: BOOL & contact_sensor_b$1: BOOL & (not(pressure_sensor_l$1 = PRESSURE_A) => contact_sensor_a$1 = TRUE) & (not(pressure_sensor_l$1 = PRESSURE_B) => contact_sensor_b$1 = TRUE) ==> pressure_sensor_l,contact_sensor_a,contact_sensor_b:=pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1) || @(card_reader_a$0).(card_reader_a$0: BOOL ==> card_reader_a:=card_reader_a$0) || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0));((pressure_sensor_l/=PRESSURE_A => contact_sensor_a = TRUE) & (pressure_sensor_l/=PRESSURE_B => contact_sensor_b = TRUE) | pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE ==> enable_door_a,enable_door_b:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) ==> (pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE ==> enable_door_b,enable_door_a:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) ==> enable_door_a,enable_door_b:=FALSE,FALSE)));
  List_Substitution(Implementation(test_ENABLER_i),test_compute_enabling)==(update_sensors_states;compute_enabling)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(test_ENABLER_i))==(?);
  Inherited_List_Constants(Implementation(test_ENABLER_i))==(?);
  List_Constants(Implementation(test_ENABLER_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(test_ENABLER_i),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Context_List_Enumerated(Implementation(test_ENABLER_i))==(?);
  Context_List_Defered(Implementation(test_ENABLER_i))==(?);
  Context_List_Sets(Implementation(test_ENABLER_i))==(?);
  List_Own_Enumerated(Implementation(test_ENABLER_i))==(?);
  List_Valuable_Sets(Implementation(test_ENABLER_i))==(?);
  Inherited_List_Enumerated(Implementation(test_ENABLER_i))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Inherited_List_Defered(Implementation(test_ENABLER_i))==(?);
  Inherited_List_Sets(Implementation(test_ENABLER_i))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  List_Enumerated(Implementation(test_ENABLER_i))==(?);
  List_Defered(Implementation(test_ENABLER_i))==(?);
  List_Sets(Implementation(test_ENABLER_i))==(?);
  Set_Definition(Implementation(test_ENABLER_i),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Implementation(test_ENABLER_i),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Implementation(test_ENABLER_i),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(test_ENABLER_i))==(?);
  Expanded_List_HiddenConstants(Implementation(test_ENABLER_i))==(?);
  List_HiddenConstants(Implementation(test_ENABLER_i))==(?);
  External_List_HiddenConstants(Implementation(test_ENABLER_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(test_ENABLER_i))==(btrue);
  Context_List_Properties(Implementation(test_ENABLER_i))==(btrue);
  Inherited_List_Properties(Implementation(test_ENABLER_i))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  List_Properties(Implementation(test_ENABLER_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(test_ENABLER_i))==(aa: aa);
  List_Values(Implementation(test_ENABLER_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(test_ENABLER_i),Machine(ENABLER))==(compute_enabling);
  List_Included_Operations(Implementation(test_ENABLER_i),Machine(SENSORS))==(update_sensors_states)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(test_ENABLER_i))==(Type(test_compute_enabling) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants_Env(Implementation(test_ENABLER_i),Machine(CTX))==(Type(PRESSURE_A) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_B) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_OTHER) == Cst(etype(PRESSURES,0,2));Type(OBJ_OPEN_DOOR_A) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_OPEN_DOOR_B) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_NONE) == Cst(etype(OBJECTIVES,0,2));Type(NONE) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_A) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_B) == Cst(etype(ACTIONS,0,6));Type(AUTHENTICATED_A) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_L) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_B) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_NONE) == Cst(etype(AUTHENTICATED,0,3)));
  Enumerate_Definition(Implementation(test_ENABLER_i),Machine(CTX),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Enumerate_Definition(Implementation(test_ENABLER_i),Machine(CTX),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Enumerate_Definition(Implementation(test_ENABLER_i),Machine(CTX),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Enumerate_Definition(Implementation(test_ENABLER_i),Machine(CTX),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(test_ENABLER_i)) == (? | PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED,PRESSURE_A,PRESSURE_B,PRESSURE_OTHER,OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE,NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B,AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE | ? | ? | test_compute_enabling | ? | imported(Machine(CTX)),imported(Machine(SENSORS)),imported(Machine(ENABLER)) | ? | test_ENABLER_i);
  List_Of_HiddenCst_Ids(Implementation(test_ENABLER_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(test_ENABLER_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(test_ENABLER_i)) == (? | enable_door_b,enable_door_a,button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l);
  List_Of_Ids_SeenBNU(Implementation(test_ENABLER_i)) == (seen(Machine(CTX)): (PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED,PRESSURE_A,PRESSURE_B,PRESSURE_OTHER,OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE,NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B,AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(SENSORS)): (? | ? | ? | ? | button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l | ? | ? | ? | ?));
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
THEORY SetsEnvX IS
  Sets(Implementation(test_ENABLER_i)) == (Type(AUTHENTICATED) == Cst(SetOf(etype(AUTHENTICATED,0,3)));Type(ACTIONS) == Cst(SetOf(etype(ACTIONS,0,6)));Type(OBJECTIVES) == Cst(SetOf(etype(OBJECTIVES,0,2)));Type(PRESSURES) == Cst(SetOf(etype(PRESSURES,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(test_ENABLER_i)) == (Type(AUTHENTICATED_NONE) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_B) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_L) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_A) == Cst(etype(AUTHENTICATED,0,3));Type(ADAPT_PRESSURE_L_TO_B) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(NONE) == Cst(etype(ACTIONS,0,6));Type(OBJ_NONE) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_OPEN_DOOR_B) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_OPEN_DOOR_A) == Cst(etype(OBJECTIVES,0,2));Type(PRESSURE_OTHER) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_B) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_A) == Cst(etype(PRESSURES,0,2)))
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
  List_Local_Operations(Implementation(test_ENABLER_i))==(?)
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
  TypingPredicate(Implementation(test_ENABLER_i))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(test_ENABLER_i),Machine(CTX))==(?);
  ImportedVisVariablesList(Implementation(test_ENABLER_i),Machine(CTX))==(?);
  ImportedVariablesList(Implementation(test_ENABLER_i),Machine(SENSORS))==(?);
  ImportedVisVariablesList(Implementation(test_ENABLER_i),Machine(SENSORS))==(button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l);
  ImportedVariablesList(Implementation(test_ENABLER_i),Machine(ENABLER))==(?);
  ImportedVisVariablesList(Implementation(test_ENABLER_i),Machine(ENABLER))==(enable_door_b,enable_door_a)
END
&
THEORY ListLocalOpInvariantX END
)
