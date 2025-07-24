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
  List_VisibleVariables(Machine(SENSORS))==(contact_sensor_b,contact_sensor_a,pressure_sensor_l);
  Internal_List_VisibleVariables(Machine(SENSORS))==(contact_sensor_b,contact_sensor_a,pressure_sensor_l)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SENSORS))==(btrue);
  Gluing_List_Invariant(Machine(SENSORS))==(btrue);
  Expanded_List_Invariant(Machine(SENSORS))==(btrue);
  Abstract_List_Invariant(Machine(SENSORS))==(btrue);
  Context_List_Invariant(Machine(SENSORS))==(btrue);
  List_Invariant(Machine(SENSORS))==(pressure_sensor_l: PRESSURES & contact_sensor_a: BOOL & contact_sensor_b: BOOL)
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
  Expanded_List_Initialisation(Machine(SENSORS))==(@(contact_sensor_a$0).(contact_sensor_a$0: BOOL ==> contact_sensor_a:=contact_sensor_a$0) || @(contact_sensor_b$0).(contact_sensor_b$0: BOOL ==> contact_sensor_b:=contact_sensor_b$0) || @(pressure_sensor_l$0).(pressure_sensor_l$0: PRESSURES ==> pressure_sensor_l:=pressure_sensor_l$0));
  Context_List_Initialisation(Machine(SENSORS))==(skip);
  List_Initialisation(Machine(SENSORS))==(contact_sensor_a:: BOOL || contact_sensor_b:: BOOL || pressure_sensor_l:: PRESSURES)
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
  Expanded_List_Substitution(Machine(SENSORS),update_sensors_states)==(btrue | @(pressure,contactA,contactB).(pressure: PRESSURES & contactA: BOOL & contactB: BOOL & (contactA = FALSE => contactB = TRUE & pressure = PRESSURE_A) & (contactB = FALSE => contactA = TRUE & pressure = PRESSURE_B) ==> contact_sensor_a,contact_sensor_b,pressure_sensor_l:=contactA,contactB,pressure));
  List_Substitution(Machine(SENSORS),update_sensors_states)==(ANY pressure,contactA,contactB WHERE pressure: PRESSURES & contactA: BOOL & contactB: BOOL & (contactA = FALSE => contactB = TRUE & pressure = PRESSURE_A) & (contactB = FALSE => contactA = TRUE & pressure = PRESSURE_B) THEN contact_sensor_a:=contactA || contact_sensor_b:=contactB || pressure_sensor_l:=pressure END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SENSORS))==(?);
  Inherited_List_Constants(Machine(SENSORS))==(?);
  List_Constants(Machine(SENSORS))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(SENSORS),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER});
  Context_List_Enumerated(Machine(SENSORS))==(PRESSURES);
  Context_List_Defered(Machine(SENSORS))==(?);
  Context_List_Sets(Machine(SENSORS))==(PRESSURES);
  List_Valuable_Sets(Machine(SENSORS))==(?);
  Inherited_List_Enumerated(Machine(SENSORS))==(?);
  Inherited_List_Defered(Machine(SENSORS))==(?);
  Inherited_List_Sets(Machine(SENSORS))==(?);
  List_Enumerated(Machine(SENSORS))==(?);
  List_Defered(Machine(SENSORS))==(?);
  List_Sets(Machine(SENSORS))==(?)
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
  Context_List_Properties(Machine(SENSORS))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}));
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
  List_ANY_Var(Machine(SENSORS),update_sensors_states)==((Var(pressure) == etype(PRESSURES,?,?)),(Var(contactA) == btype(BOOL,?,?)),(Var(contactB) == btype(BOOL,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(SENSORS)) == (? | ? | ? | ? | update_sensors_states | ? | seen(Machine(CTX)) | ? | SENSORS);
  List_Of_HiddenCst_Ids(Machine(SENSORS)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SENSORS)) == (?);
  List_Of_VisibleVar_Ids(Machine(SENSORS)) == (contact_sensor_b,contact_sensor_a,pressure_sensor_l | ?);
  List_Of_Ids_SeenBNU(Machine(SENSORS)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (PRESSURES,PRESSURE_A,PRESSURE_B,PRESSURE_OTHER | ? | ? | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Machine(SENSORS)) == (Type(contact_sensor_b) == Mvv(btype(BOOL,?,?));Type(contact_sensor_a) == Mvv(btype(BOOL,?,?));Type(pressure_sensor_l) == Mvv(etype(PRESSURES,?,?)))
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
