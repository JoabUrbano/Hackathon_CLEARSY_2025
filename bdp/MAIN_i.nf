Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(MAIN_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(MAIN_i))==(Machine(MAIN));
  Level(Implementation(MAIN_i))==(1);
  Upper_Level(Implementation(MAIN_i))==(Machine(MAIN))
END
&
THEORY LoadedStructureX IS
  Implementation(MAIN_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(MAIN_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(MAIN_i))==(CTX,SENSORS,ENABLER,CONTROLLER_daniel,CONTROLLER_henrique);
  Inherited_List_Includes(Implementation(MAIN_i))==(CONTROLLER_henrique,CONTROLLER_daniel,ENABLER,SENSORS,CTX)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(MAIN_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(MAIN_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(MAIN_i))==(?);
  Context_List_Variables(Implementation(MAIN_i))==(?);
  Abstract_List_Variables(Implementation(MAIN_i))==(?);
  Local_List_Variables(Implementation(MAIN_i))==(?);
  List_Variables(Implementation(MAIN_i))==(?);
  External_List_Variables(Implementation(MAIN_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(MAIN_i))==(?);
  Abstract_List_VisibleVariables(Implementation(MAIN_i))==(?);
  External_List_VisibleVariables(Implementation(MAIN_i))==(button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l,enable_door_b,enable_door_a,current_objective_d,current_authentication_d,current_action_d,current_objective_h,current_authentication_h,current_action_h);
  Expanded_List_VisibleVariables(Implementation(MAIN_i))==(button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l,enable_door_b,enable_door_a,current_objective_d,current_authentication_d,current_action_d,current_objective_h,current_authentication_h,current_action_h);
  List_VisibleVariables(Implementation(MAIN_i))==(action);
  Internal_List_VisibleVariables(Implementation(MAIN_i))==(action)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(MAIN_i))==(btrue);
  Abstract_List_Invariant(Implementation(MAIN_i))==(btrue);
  Expanded_List_Invariant(Implementation(MAIN_i))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL & card_reader_a: BOOL & card_reader_l: BOOL & card_reader_b: BOOL & button_room_a_open_a: BOOL & button_room_l_open_a: BOOL & button_room_l_open_b: BOOL & button_room_b_open_b: BOOL & enable_door_a: BOOL & enable_door_b: BOOL & (enable_door_a = TRUE => enable_door_b = FALSE) & (enable_door_b = TRUE => enable_door_a = FALSE) & current_action_d: ACTIONS & current_authentication_d: AUTHENTICATED & current_objective_d: OBJECTIVES & current_action_h: ACTIONS & current_authentication_h: AUTHENTICATED & current_objective_h: OBJECTIVES);
  Context_List_Invariant(Implementation(MAIN_i))==(btrue);
  List_Invariant(Implementation(MAIN_i))==(action: ACTIONS)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(MAIN_i))==(btrue);
  Expanded_List_Assertions(Implementation(MAIN_i))==(btrue);
  Context_List_Assertions(Implementation(MAIN_i))==(btrue);
  List_Assertions(Implementation(MAIN_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(MAIN_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(MAIN_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(MAIN_i))==(@(pressure_sensor_l$0).(pressure_sensor_l$0: PRESSURES ==> pressure_sensor_l:=pressure_sensor_l$0) || @(contact_sensor_a$0).(contact_sensor_a$0: BOOL ==> contact_sensor_a:=contact_sensor_a$0) || @(contact_sensor_b$0).(contact_sensor_b$0: BOOL ==> contact_sensor_b:=contact_sensor_b$0) || card_reader_a:=FALSE || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0);enable_door_a,enable_door_b:=FALSE,FALSE;current_action_d,current_authentication_d,current_objective_d:=NONE,AUTHENTICATED_NONE,OBJ_NONE;current_action_h,current_authentication_h,current_objective_h:=NONE,AUTHENTICATED_NONE,OBJ_NONE;action:=NONE);
  Context_List_Initialisation(Implementation(MAIN_i))==(skip);
  List_Initialisation(Implementation(MAIN_i))==(action:=NONE)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(MAIN_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(MAIN_i),Machine(CTX))==(?);
  List_Instanciated_Parameters(Implementation(MAIN_i),Machine(SENSORS))==(?);
  List_Instanciated_Parameters(Implementation(MAIN_i),Machine(ENABLER))==(?);
  List_Instanciated_Parameters(Implementation(MAIN_i),Machine(CONTROLLER_daniel))==(?);
  List_Instanciated_Parameters(Implementation(MAIN_i),Machine(CONTROLLER_henrique))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(MAIN_i),Machine(CONTROLLER_henrique))==(btrue);
  List_Constraints(Implementation(MAIN_i))==(btrue);
  List_Context_Constraints(Implementation(MAIN_i))==(btrue);
  List_Constraints(Implementation(MAIN_i),Machine(CONTROLLER_daniel))==(btrue);
  List_Constraints(Implementation(MAIN_i),Machine(ENABLER))==(btrue);
  List_Constraints(Implementation(MAIN_i),Machine(SENSORS))==(btrue);
  List_Constraints(Implementation(MAIN_i),Machine(CTX))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(MAIN_i))==(operate);
  List_Operations(Implementation(MAIN_i))==(operate)
END
&
THEORY ListInputX IS
  List_Input(Implementation(MAIN_i),operate)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(MAIN_i),operate)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(MAIN_i),operate)==(operate)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(MAIN_i),operate)==(btrue);
  List_Precondition(Implementation(MAIN_i),operate)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(MAIN_i),operate)==(btrue | @(act_d,auth_d,obj_d,act_h,auth_h,obj_h).((btrue | @(pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1).(pressure_sensor_l$1: PRESSURES & contact_sensor_a$1: BOOL & contact_sensor_b$1: BOOL & (not(pressure_sensor_l$1 = PRESSURE_A) => contact_sensor_a$1 = TRUE) & (not(pressure_sensor_l$1 = PRESSURE_B) => contact_sensor_b$1 = TRUE) ==> pressure_sensor_l,contact_sensor_a,contact_sensor_b:=pressure_sensor_l$1,contact_sensor_a$1,contact_sensor_b$1) || @(card_reader_a$0).(card_reader_a$0: BOOL ==> card_reader_a:=card_reader_a$0) || @(card_reader_l$0).(card_reader_l$0: BOOL ==> card_reader_l:=card_reader_l$0) || @(card_reader_b$0).(card_reader_b$0: BOOL ==> card_reader_b:=card_reader_b$0) || @(button_room_a_open_a$0).(button_room_a_open_a$0: BOOL ==> button_room_a_open_a:=button_room_a_open_a$0) || @(button_room_l_open_a$0).(button_room_l_open_a$0: BOOL ==> button_room_l_open_a:=button_room_l_open_a$0) || @(button_room_l_open_b$0).(button_room_l_open_b$0: BOOL ==> button_room_l_open_b:=button_room_l_open_b$0) || @(button_room_b_open_b$0).(button_room_b_open_b$0: BOOL ==> button_room_b_open_b:=button_room_b_open_b$0));(btrue | @(current_authentication_h$1).(current_authentication_h$1: AUTHENTICATED & (not(current_authentication_h$1 = AUTHENTICATED_NONE) => current_authentication_h: {AUTHENTICATED_NONE,current_authentication_h$1}) ==> current_authentication_h:=current_authentication_h$1));(btrue | @(current_authentication_d$1).(current_authentication_d$1: AUTHENTICATED & (not(current_authentication_d$1 = AUTHENTICATED_NONE) => current_authentication_d: {AUTHENTICATED_NONE,current_authentication_d$1}) ==> current_authentication_d:=current_authentication_d$1));(btrue | @(current_action_h$1,current_objective_h$1).(current_action_h$1: ACTIONS & current_objective_h$1: OBJECTIVES & (current_action_h$1 = TRANSLATE_OPEN_DOOR_A => pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) & (current_action_h$1 = TRANSLATE_OPEN_DOOR_B => pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) & (current_action_h$1 = ADAPT_PRESSURE_L_TO_A => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_A) & (current_action_h$1 = ADAPT_PRESSURE_L_TO_B => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_B) ==> current_action_h,current_objective_h:=current_action_h$1,current_objective_h$1));(btrue | @(current_action_d$1,current_objective_d$1).(current_action_d$1: ACTIONS & current_objective_d$1: OBJECTIVES & (current_action_d$1 = TRANSLATE_OPEN_DOOR_A => pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) & (current_action_d$1 = TRANSLATE_OPEN_DOOR_B => pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) & (current_action_d$1 = ADAPT_PRESSURE_L_TO_A => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_A) & (current_action_d$1 = ADAPT_PRESSURE_L_TO_B => contact_sensor_a = TRUE & contact_sensor_b = TRUE & pressure_sensor_l/=PRESSURE_B) ==> current_action_d,current_objective_d:=current_action_d$1,current_objective_d$1));((pressure_sensor_l/=PRESSURE_A => contact_sensor_a = TRUE) & (pressure_sensor_l/=PRESSURE_B => contact_sensor_b = TRUE) | pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE ==> enable_door_a,enable_door_b:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_B & contact_sensor_a = TRUE) ==> (pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE ==> enable_door_b,enable_door_a:=FALSE,TRUE [] not(pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE) ==> enable_door_a,enable_door_b:=FALSE,FALSE));(btrue | act_d,auth_d,obj_d:=current_action_d,current_authentication_d,current_objective_d);(btrue | act_h,auth_h,obj_h:=current_action_h,current_authentication_h,current_objective_h);(act_d = act_h & auth_d = auth_h & obj_d = obj_h ==> action:=act_d [] not(act_d = act_h & auth_d = auth_h & obj_d = obj_h) ==> action:=NONE)));
  List_Substitution(Implementation(MAIN_i),operate)==(VAR act_d,auth_d,obj_d,act_h,auth_h,obj_h IN update_sensors_states;process_readers_henrique;process_readers_daniel;control_henrique;control_daniel;compute_enabling;act_d,auth_d,obj_d <-- get_status_daniel;act_h,auth_h,obj_h <-- get_status_henrique;IF act_d = act_h & auth_d = auth_h & obj_d = obj_h THEN action:=act_d ELSE action:=NONE END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(MAIN_i))==(?);
  Inherited_List_Constants(Implementation(MAIN_i))==(?);
  List_Constants(Implementation(MAIN_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(MAIN_i),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Context_List_Enumerated(Implementation(MAIN_i))==(?);
  Context_List_Defered(Implementation(MAIN_i))==(?);
  Context_List_Sets(Implementation(MAIN_i))==(?);
  List_Own_Enumerated(Implementation(MAIN_i))==(?);
  List_Valuable_Sets(Implementation(MAIN_i))==(?);
  Inherited_List_Enumerated(Implementation(MAIN_i))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Inherited_List_Defered(Implementation(MAIN_i))==(?);
  Inherited_List_Sets(Implementation(MAIN_i))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  List_Enumerated(Implementation(MAIN_i))==(?);
  List_Defered(Implementation(MAIN_i))==(?);
  List_Sets(Implementation(MAIN_i))==(?);
  Set_Definition(Implementation(MAIN_i),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Implementation(MAIN_i),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Implementation(MAIN_i),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(MAIN_i))==(?);
  Expanded_List_HiddenConstants(Implementation(MAIN_i))==(?);
  List_HiddenConstants(Implementation(MAIN_i))==(?);
  External_List_HiddenConstants(Implementation(MAIN_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(MAIN_i))==(btrue);
  Context_List_Properties(Implementation(MAIN_i))==(btrue);
  Inherited_List_Properties(Implementation(MAIN_i))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}));
  List_Properties(Implementation(MAIN_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(MAIN_i))==(aa: aa);
  List_Values(Implementation(MAIN_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(MAIN_i),Machine(CONTROLLER_henrique))==(get_status_henrique,process_readers_henrique,control_henrique);
  List_Included_Operations(Implementation(MAIN_i),Machine(CONTROLLER_daniel))==(get_status_daniel,process_readers_daniel,control_daniel);
  List_Included_Operations(Implementation(MAIN_i),Machine(ENABLER))==(compute_enabling);
  List_Included_Operations(Implementation(MAIN_i),Machine(SENSORS))==(update_sensors_states)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(MAIN_i))==(Type(action) == Mvv(etype(ACTIONS,?,?)));
  Operations(Implementation(MAIN_i))==(Type(operate) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants_Env(Implementation(MAIN_i),Machine(CTX))==(Type(PRESSURE_A) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_B) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_OTHER) == Cst(etype(PRESSURES,0,2));Type(OBJ_OPEN_DOOR_A) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_OPEN_DOOR_B) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_NONE) == Cst(etype(OBJECTIVES,0,2));Type(NONE) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_A) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_B) == Cst(etype(ACTIONS,0,6));Type(AUTHENTICATED_A) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_L) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_B) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_NONE) == Cst(etype(AUTHENTICATED,0,3)));
  Enumerate_Definition(Implementation(MAIN_i),Machine(CTX),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE});
  Enumerate_Definition(Implementation(MAIN_i),Machine(CTX),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Enumerate_Definition(Implementation(MAIN_i),Machine(CTX),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Enumerate_Definition(Implementation(MAIN_i),Machine(CTX),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(MAIN_i)) == (? | PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED,PRESSURE_A,PRESSURE_B,PRESSURE_OTHER,OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE,NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B,AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE | ? | ? | operate | ? | imported(Machine(CTX)),imported(Machine(SENSORS)),imported(Machine(ENABLER)),imported(Machine(CONTROLLER_daniel)),imported(Machine(CONTROLLER_henrique)) | ? | MAIN_i);
  List_Of_HiddenCst_Ids(Implementation(MAIN_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(MAIN_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(MAIN_i)) == (action | current_objective_h,current_authentication_h,current_action_h,current_objective_d,current_authentication_d,current_action_d,enable_door_b,enable_door_a,button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l);
  List_Of_Ids_SeenBNU(Implementation(MAIN_i)) == (seen(Machine(CTX)): (PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED,PRESSURE_A,PRESSURE_B,PRESSURE_OTHER,OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE,NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B,AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(SENSORS)): (? | ? | ? | ? | button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l | ? | ? | ? | ?) | seen(Machine(ENABLER)): (? | ? | ? | ? | enable_door_b,enable_door_a | ? | ? | ? | ?));
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
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?);
  List_Of_Ids(Machine(CONTROLLER_daniel)) == (? | ? | ? | ? | get_status_daniel,process_readers_daniel,control_daniel | ? | seen(Machine(CTX)),seen(Machine(SENSORS)),seen(Machine(ENABLER)) | ? | CONTROLLER_daniel);
  List_Of_HiddenCst_Ids(Machine(CONTROLLER_daniel)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CONTROLLER_daniel)) == (?);
  List_Of_VisibleVar_Ids(Machine(CONTROLLER_daniel)) == (current_objective_d,current_authentication_d,current_action_d | ?);
  List_Of_Ids_SeenBNU(Machine(CONTROLLER_daniel)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(MAIN_i)) == (Type(AUTHENTICATED) == Cst(SetOf(etype(AUTHENTICATED,0,3)));Type(ACTIONS) == Cst(SetOf(etype(ACTIONS,0,6)));Type(OBJECTIVES) == Cst(SetOf(etype(OBJECTIVES,0,2)));Type(PRESSURES) == Cst(SetOf(etype(PRESSURES,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(MAIN_i)) == (Type(AUTHENTICATED_NONE) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_B) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_L) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_A) == Cst(etype(AUTHENTICATED,0,3));Type(ADAPT_PRESSURE_L_TO_B) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(NONE) == Cst(etype(ACTIONS,0,6));Type(OBJ_NONE) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_OPEN_DOOR_B) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_OPEN_DOOR_A) == Cst(etype(OBJECTIVES,0,2));Type(PRESSURE_OTHER) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_B) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_A) == Cst(etype(PRESSURES,0,2)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(MAIN_i)) == (Type(action) == Mvv(etype(ACTIONS,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(MAIN_i),operate, 1) == (Type(act_d) == Lvl(etype(ACTIONS,?,?));Type(auth_d) == Lvl(etype(AUTHENTICATED,?,?));Type(obj_d) == Lvl(etype(OBJECTIVES,?,?));Type(act_h) == Lvl(etype(ACTIONS,?,?));Type(auth_h) == Lvl(etype(AUTHENTICATED,?,?));Type(obj_h) == Lvl(etype(OBJECTIVES,?,?)))
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
  List_Local_Operations(Implementation(MAIN_i))==(?)
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
  TypingPredicate(Implementation(MAIN_i))==(action: ACTIONS)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(MAIN_i),Machine(CTX))==(?);
  ImportedVisVariablesList(Implementation(MAIN_i),Machine(CTX))==(?);
  ImportedVariablesList(Implementation(MAIN_i),Machine(SENSORS))==(?);
  ImportedVisVariablesList(Implementation(MAIN_i),Machine(SENSORS))==(button_room_b_open_b,button_room_l_open_b,button_room_l_open_a,button_room_a_open_a,card_reader_b,card_reader_l,card_reader_a,contact_sensor_b,contact_sensor_a,pressure_sensor_l);
  ImportedVariablesList(Implementation(MAIN_i),Machine(ENABLER))==(?);
  ImportedVisVariablesList(Implementation(MAIN_i),Machine(ENABLER))==(enable_door_b,enable_door_a);
  ImportedVariablesList(Implementation(MAIN_i),Machine(CONTROLLER_daniel))==(?);
  ImportedVisVariablesList(Implementation(MAIN_i),Machine(CONTROLLER_daniel))==(current_objective_d,current_authentication_d,current_action_d);
  ImportedVariablesList(Implementation(MAIN_i),Machine(CONTROLLER_henrique))==(?);
  ImportedVisVariablesList(Implementation(MAIN_i),Machine(CONTROLLER_henrique))==(current_objective_h,current_authentication_h,current_action_h)
END
&
THEORY ListLocalOpInvariantX END
)
