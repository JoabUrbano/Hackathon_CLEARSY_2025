Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(test_ACCES_CARD))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(test_ACCES_CARD))==(Machine(test_ACCES_CARD));
  Level(Machine(test_ACCES_CARD))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(test_ACCES_CARD)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(test_ACCES_CARD))==(?);
  List_Includes(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(test_ACCES_CARD))==(?);
  Context_List_Variables(Machine(test_ACCES_CARD))==(?);
  Abstract_List_Variables(Machine(test_ACCES_CARD))==(?);
  Local_List_Variables(Machine(test_ACCES_CARD))==(?);
  List_Variables(Machine(test_ACCES_CARD))==(?);
  External_List_Variables(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(test_ACCES_CARD))==(?);
  Abstract_List_VisibleVariables(Machine(test_ACCES_CARD))==(?);
  External_List_VisibleVariables(Machine(test_ACCES_CARD))==(?);
  Expanded_List_VisibleVariables(Machine(test_ACCES_CARD))==(?);
  List_VisibleVariables(Machine(test_ACCES_CARD))==(?);
  Internal_List_VisibleVariables(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(test_ACCES_CARD))==(btrue);
  Gluing_List_Invariant(Machine(test_ACCES_CARD))==(btrue);
  Expanded_List_Invariant(Machine(test_ACCES_CARD))==(btrue);
  Abstract_List_Invariant(Machine(test_ACCES_CARD))==(btrue);
  Context_List_Invariant(Machine(test_ACCES_CARD))==(btrue);
  List_Invariant(Machine(test_ACCES_CARD))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(test_ACCES_CARD))==(btrue);
  Abstract_List_Assertions(Machine(test_ACCES_CARD))==(btrue);
  Context_List_Assertions(Machine(test_ACCES_CARD))==(btrue);
  List_Assertions(Machine(test_ACCES_CARD))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(test_ACCES_CARD))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(test_ACCES_CARD))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(test_ACCES_CARD))==(skip);
  Context_List_Initialisation(Machine(test_ACCES_CARD))==(skip);
  List_Initialisation(Machine(test_ACCES_CARD))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(test_ACCES_CARD))==(btrue);
  List_Constraints(Machine(test_ACCES_CARD))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(test_ACCES_CARD))==(test_is_valid);
  List_Operations(Machine(test_ACCES_CARD))==(test_is_valid)
END
&
THEORY ListInputX IS
  List_Input(Machine(test_ACCES_CARD),test_is_valid)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(test_ACCES_CARD),test_is_valid)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(test_ACCES_CARD),test_is_valid)==(test_is_valid)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(test_ACCES_CARD),test_is_valid)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(test_ACCES_CARD),test_is_valid)==(btrue | skip);
  List_Substitution(Machine(test_ACCES_CARD),test_is_valid)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(test_ACCES_CARD))==(?);
  Inherited_List_Constants(Machine(test_ACCES_CARD))==(?);
  List_Constants(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(test_ACCES_CARD))==(?);
  Context_List_Defered(Machine(test_ACCES_CARD))==(?);
  Context_List_Sets(Machine(test_ACCES_CARD))==(?);
  List_Valuable_Sets(Machine(test_ACCES_CARD))==(?);
  Inherited_List_Enumerated(Machine(test_ACCES_CARD))==(?);
  Inherited_List_Defered(Machine(test_ACCES_CARD))==(?);
  Inherited_List_Sets(Machine(test_ACCES_CARD))==(?);
  List_Enumerated(Machine(test_ACCES_CARD))==(?);
  List_Defered(Machine(test_ACCES_CARD))==(?);
  List_Sets(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(test_ACCES_CARD))==(?);
  Expanded_List_HiddenConstants(Machine(test_ACCES_CARD))==(?);
  List_HiddenConstants(Machine(test_ACCES_CARD))==(?);
  External_List_HiddenConstants(Machine(test_ACCES_CARD))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(test_ACCES_CARD))==(btrue);
  Context_List_Properties(Machine(test_ACCES_CARD))==(btrue);
  Inherited_List_Properties(Machine(test_ACCES_CARD))==(btrue);
  List_Properties(Machine(test_ACCES_CARD))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(test_ACCES_CARD),test_is_valid)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(test_ACCES_CARD)) == (? | ? | ? | ? | test_is_valid | ? | ? | ? | test_ACCES_CARD);
  List_Of_HiddenCst_Ids(Machine(test_ACCES_CARD)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(test_ACCES_CARD)) == (?);
  List_Of_VisibleVar_Ids(Machine(test_ACCES_CARD)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(test_ACCES_CARD)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(test_ACCES_CARD)) == (Type(test_is_valid) == Cst(No_type,No_type));
  Observers(Machine(test_ACCES_CARD)) == (Type(test_is_valid) == Cst(No_type,No_type))
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
