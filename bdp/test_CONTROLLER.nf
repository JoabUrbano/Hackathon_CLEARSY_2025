Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(test_CONTROLLER))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(test_CONTROLLER))==(Machine(test_CONTROLLER));
  Level(Machine(test_CONTROLLER))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(test_CONTROLLER)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(test_CONTROLLER))==(?);
  List_Includes(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(test_CONTROLLER))==(?);
  Context_List_Variables(Machine(test_CONTROLLER))==(?);
  Abstract_List_Variables(Machine(test_CONTROLLER))==(?);
  Local_List_Variables(Machine(test_CONTROLLER))==(?);
  List_Variables(Machine(test_CONTROLLER))==(?);
  External_List_Variables(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(test_CONTROLLER))==(?);
  Abstract_List_VisibleVariables(Machine(test_CONTROLLER))==(?);
  External_List_VisibleVariables(Machine(test_CONTROLLER))==(?);
  Expanded_List_VisibleVariables(Machine(test_CONTROLLER))==(?);
  List_VisibleVariables(Machine(test_CONTROLLER))==(?);
  Internal_List_VisibleVariables(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(test_CONTROLLER))==(btrue);
  Gluing_List_Invariant(Machine(test_CONTROLLER))==(btrue);
  Expanded_List_Invariant(Machine(test_CONTROLLER))==(btrue);
  Abstract_List_Invariant(Machine(test_CONTROLLER))==(btrue);
  Context_List_Invariant(Machine(test_CONTROLLER))==(btrue);
  List_Invariant(Machine(test_CONTROLLER))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(test_CONTROLLER))==(btrue);
  Abstract_List_Assertions(Machine(test_CONTROLLER))==(btrue);
  Context_List_Assertions(Machine(test_CONTROLLER))==(btrue);
  List_Assertions(Machine(test_CONTROLLER))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(test_CONTROLLER))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(test_CONTROLLER))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(test_CONTROLLER))==(skip);
  Context_List_Initialisation(Machine(test_CONTROLLER))==(skip);
  List_Initialisation(Machine(test_CONTROLLER))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(test_CONTROLLER))==(btrue);
  List_Constraints(Machine(test_CONTROLLER))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(test_CONTROLLER))==(test_control);
  List_Operations(Machine(test_CONTROLLER))==(test_control)
END
&
THEORY ListInputX IS
  List_Input(Machine(test_CONTROLLER),test_control)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(test_CONTROLLER),test_control)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(test_CONTROLLER),test_control)==(test_control)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(test_CONTROLLER),test_control)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(test_CONTROLLER),test_control)==(btrue | skip);
  List_Substitution(Machine(test_CONTROLLER),test_control)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(test_CONTROLLER))==(?);
  Inherited_List_Constants(Machine(test_CONTROLLER))==(?);
  List_Constants(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(test_CONTROLLER))==(?);
  Context_List_Defered(Machine(test_CONTROLLER))==(?);
  Context_List_Sets(Machine(test_CONTROLLER))==(?);
  List_Valuable_Sets(Machine(test_CONTROLLER))==(?);
  Inherited_List_Enumerated(Machine(test_CONTROLLER))==(?);
  Inherited_List_Defered(Machine(test_CONTROLLER))==(?);
  Inherited_List_Sets(Machine(test_CONTROLLER))==(?);
  List_Enumerated(Machine(test_CONTROLLER))==(?);
  List_Defered(Machine(test_CONTROLLER))==(?);
  List_Sets(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(test_CONTROLLER))==(?);
  Expanded_List_HiddenConstants(Machine(test_CONTROLLER))==(?);
  List_HiddenConstants(Machine(test_CONTROLLER))==(?);
  External_List_HiddenConstants(Machine(test_CONTROLLER))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(test_CONTROLLER))==(btrue);
  Context_List_Properties(Machine(test_CONTROLLER))==(btrue);
  Inherited_List_Properties(Machine(test_CONTROLLER))==(btrue);
  List_Properties(Machine(test_CONTROLLER))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(test_CONTROLLER),test_control)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(test_CONTROLLER)) == (? | ? | ? | ? | test_control | ? | ? | ? | test_CONTROLLER);
  List_Of_HiddenCst_Ids(Machine(test_CONTROLLER)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(test_CONTROLLER)) == (?);
  List_Of_VisibleVar_Ids(Machine(test_CONTROLLER)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(test_CONTROLLER)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(test_CONTROLLER)) == (Type(test_control) == Cst(No_type,No_type));
  Observers(Machine(test_CONTROLLER)) == (Type(test_control) == Cst(No_type,No_type))
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
