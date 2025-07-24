Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(test_ENABLER))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(test_ENABLER))==(Machine(test_ENABLER));
  Level(Machine(test_ENABLER))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(test_ENABLER)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(test_ENABLER))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(test_ENABLER))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(test_ENABLER))==(?);
  List_Includes(Machine(test_ENABLER))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(test_ENABLER))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(test_ENABLER))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(test_ENABLER))==(?);
  Context_List_Variables(Machine(test_ENABLER))==(?);
  Abstract_List_Variables(Machine(test_ENABLER))==(?);
  Local_List_Variables(Machine(test_ENABLER))==(?);
  List_Variables(Machine(test_ENABLER))==(?);
  External_List_Variables(Machine(test_ENABLER))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(test_ENABLER))==(?);
  Abstract_List_VisibleVariables(Machine(test_ENABLER))==(?);
  External_List_VisibleVariables(Machine(test_ENABLER))==(?);
  Expanded_List_VisibleVariables(Machine(test_ENABLER))==(?);
  List_VisibleVariables(Machine(test_ENABLER))==(?);
  Internal_List_VisibleVariables(Machine(test_ENABLER))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(test_ENABLER))==(btrue);
  Gluing_List_Invariant(Machine(test_ENABLER))==(btrue);
  Expanded_List_Invariant(Machine(test_ENABLER))==(btrue);
  Abstract_List_Invariant(Machine(test_ENABLER))==(btrue);
  Context_List_Invariant(Machine(test_ENABLER))==(btrue);
  List_Invariant(Machine(test_ENABLER))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(test_ENABLER))==(btrue);
  Abstract_List_Assertions(Machine(test_ENABLER))==(btrue);
  Context_List_Assertions(Machine(test_ENABLER))==(btrue);
  List_Assertions(Machine(test_ENABLER))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(test_ENABLER))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(test_ENABLER))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(test_ENABLER))==(skip);
  Context_List_Initialisation(Machine(test_ENABLER))==(skip);
  List_Initialisation(Machine(test_ENABLER))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(test_ENABLER))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(test_ENABLER))==(btrue);
  List_Constraints(Machine(test_ENABLER))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(test_ENABLER))==(test_compute_enabling);
  List_Operations(Machine(test_ENABLER))==(test_compute_enabling)
END
&
THEORY ListInputX IS
  List_Input(Machine(test_ENABLER),test_compute_enabling)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(test_ENABLER),test_compute_enabling)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(test_ENABLER),test_compute_enabling)==(test_compute_enabling)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(test_ENABLER),test_compute_enabling)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(test_ENABLER),test_compute_enabling)==(btrue | skip);
  List_Substitution(Machine(test_ENABLER),test_compute_enabling)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(test_ENABLER))==(?);
  Inherited_List_Constants(Machine(test_ENABLER))==(?);
  List_Constants(Machine(test_ENABLER))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(test_ENABLER))==(?);
  Context_List_Defered(Machine(test_ENABLER))==(?);
  Context_List_Sets(Machine(test_ENABLER))==(?);
  List_Valuable_Sets(Machine(test_ENABLER))==(?);
  Inherited_List_Enumerated(Machine(test_ENABLER))==(?);
  Inherited_List_Defered(Machine(test_ENABLER))==(?);
  Inherited_List_Sets(Machine(test_ENABLER))==(?);
  List_Enumerated(Machine(test_ENABLER))==(?);
  List_Defered(Machine(test_ENABLER))==(?);
  List_Sets(Machine(test_ENABLER))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(test_ENABLER))==(?);
  Expanded_List_HiddenConstants(Machine(test_ENABLER))==(?);
  List_HiddenConstants(Machine(test_ENABLER))==(?);
  External_List_HiddenConstants(Machine(test_ENABLER))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(test_ENABLER))==(btrue);
  Context_List_Properties(Machine(test_ENABLER))==(btrue);
  Inherited_List_Properties(Machine(test_ENABLER))==(btrue);
  List_Properties(Machine(test_ENABLER))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(test_ENABLER),test_compute_enabling)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(test_ENABLER)) == (? | ? | ? | ? | test_compute_enabling | ? | ? | ? | test_ENABLER);
  List_Of_HiddenCst_Ids(Machine(test_ENABLER)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(test_ENABLER)) == (?);
  List_Of_VisibleVar_Ids(Machine(test_ENABLER)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(test_ENABLER)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(test_ENABLER)) == (Type(test_compute_enabling) == Cst(No_type,No_type));
  Observers(Machine(test_ENABLER)) == (Type(test_compute_enabling) == Cst(No_type,No_type))
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
