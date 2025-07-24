Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(CTX))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(CTX))==(Machine(CTX));
  Level(Machine(CTX))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(CTX)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(CTX))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(CTX))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(CTX))==(?);
  List_Includes(Machine(CTX))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(CTX))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(CTX))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(CTX))==(?);
  Context_List_Variables(Machine(CTX))==(?);
  Abstract_List_Variables(Machine(CTX))==(?);
  Local_List_Variables(Machine(CTX))==(?);
  List_Variables(Machine(CTX))==(?);
  External_List_Variables(Machine(CTX))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(CTX))==(?);
  Abstract_List_VisibleVariables(Machine(CTX))==(?);
  External_List_VisibleVariables(Machine(CTX))==(?);
  Expanded_List_VisibleVariables(Machine(CTX))==(?);
  List_VisibleVariables(Machine(CTX))==(?);
  Internal_List_VisibleVariables(Machine(CTX))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(CTX))==(btrue);
  Gluing_List_Invariant(Machine(CTX))==(btrue);
  Expanded_List_Invariant(Machine(CTX))==(btrue);
  Abstract_List_Invariant(Machine(CTX))==(btrue);
  Context_List_Invariant(Machine(CTX))==(btrue);
  List_Invariant(Machine(CTX))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(CTX))==(btrue);
  Abstract_List_Assertions(Machine(CTX))==(btrue);
  Context_List_Assertions(Machine(CTX))==(btrue);
  List_Assertions(Machine(CTX))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(CTX))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(CTX))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(CTX))==(skip);
  Context_List_Initialisation(Machine(CTX))==(skip);
  List_Initialisation(Machine(CTX))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(CTX))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(CTX))==(btrue);
  List_Constraints(Machine(CTX))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(CTX))==(?);
  List_Operations(Machine(CTX))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(CTX))==(?);
  Inherited_List_Constants(Machine(CTX))==(?);
  List_Constants(Machine(CTX))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(CTX),PRESSURES)==({PRESSURE_A,PRESSURE_B,PRESSURE_OTHER});
  Context_List_Enumerated(Machine(CTX))==(?);
  Context_List_Defered(Machine(CTX))==(?);
  Context_List_Sets(Machine(CTX))==(?);
  List_Valuable_Sets(Machine(CTX))==(?);
  Inherited_List_Enumerated(Machine(CTX))==(?);
  Inherited_List_Defered(Machine(CTX))==(?);
  Inherited_List_Sets(Machine(CTX))==(?);
  List_Enumerated(Machine(CTX))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  List_Defered(Machine(CTX))==(?);
  List_Sets(Machine(CTX))==(PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED);
  Set_Definition(Machine(CTX),OBJECTIVES)==({OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE});
  Set_Definition(Machine(CTX),ACTIONS)==({NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B});
  Set_Definition(Machine(CTX),AUTHENTICATED)==({AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(CTX))==(?);
  Expanded_List_HiddenConstants(Machine(CTX))==(?);
  List_HiddenConstants(Machine(CTX))==(?);
  External_List_HiddenConstants(Machine(CTX))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(CTX))==(btrue);
  Context_List_Properties(Machine(CTX))==(btrue);
  Inherited_List_Properties(Machine(CTX))==(btrue);
  List_Properties(Machine(CTX))==(PRESSURES: FIN(INTEGER) & not(PRESSURES = {}) & OBJECTIVES: FIN(INTEGER) & not(OBJECTIVES = {}) & ACTIONS: FIN(INTEGER) & not(ACTIONS = {}) & AUTHENTICATED: FIN(INTEGER) & not(AUTHENTICATED = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CTX)) == (PRESSURES,OBJECTIVES,ACTIONS,AUTHENTICATED,PRESSURE_A,PRESSURE_B,PRESSURE_OTHER,OBJ_OPEN_DOOR_A,OBJ_OPEN_DOOR_B,OBJ_NONE,NONE,TRANSLATE_OPEN_DOOR_A,TRANSLATE_OPEN_DOOR_B,TRANSLATE_CLOSE_DOOR_A,TRANSLATE_CLOSE_DOOR_B,ADAPT_PRESSURE_L_TO_A,ADAPT_PRESSURE_L_TO_B,AUTHENTICATED_A,AUTHENTICATED_L,AUTHENTICATED_B,AUTHENTICATED_NONE | ? | ? | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(CTX)) == (Type(PRESSURES) == Cst(SetOf(etype(PRESSURES,0,2)));Type(OBJECTIVES) == Cst(SetOf(etype(OBJECTIVES,0,2)));Type(ACTIONS) == Cst(SetOf(etype(ACTIONS,0,6)));Type(AUTHENTICATED) == Cst(SetOf(etype(AUTHENTICATED,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(CTX)) == (Type(PRESSURE_A) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_B) == Cst(etype(PRESSURES,0,2));Type(PRESSURE_OTHER) == Cst(etype(PRESSURES,0,2));Type(OBJ_OPEN_DOOR_A) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_OPEN_DOOR_B) == Cst(etype(OBJECTIVES,0,2));Type(OBJ_NONE) == Cst(etype(OBJECTIVES,0,2));Type(NONE) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_OPEN_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_A) == Cst(etype(ACTIONS,0,6));Type(TRANSLATE_CLOSE_DOOR_B) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_A) == Cst(etype(ACTIONS,0,6));Type(ADAPT_PRESSURE_L_TO_B) == Cst(etype(ACTIONS,0,6));Type(AUTHENTICATED_A) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_L) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_B) == Cst(etype(AUTHENTICATED,0,3));Type(AUTHENTICATED_NONE) == Cst(etype(AUTHENTICATED,0,3)))
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
