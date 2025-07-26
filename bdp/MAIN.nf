Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MAIN))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MAIN))==(Machine(MAIN));
  Level(Machine(MAIN))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MAIN)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MAIN))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MAIN))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MAIN))==(?);
  List_Includes(Machine(MAIN))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MAIN))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MAIN))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MAIN))==(?);
  Context_List_Variables(Machine(MAIN))==(?);
  Abstract_List_Variables(Machine(MAIN))==(?);
  Local_List_Variables(Machine(MAIN))==(?);
  List_Variables(Machine(MAIN))==(?);
  External_List_Variables(Machine(MAIN))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MAIN))==(?);
  Abstract_List_VisibleVariables(Machine(MAIN))==(?);
  External_List_VisibleVariables(Machine(MAIN))==(?);
  Expanded_List_VisibleVariables(Machine(MAIN))==(?);
  List_VisibleVariables(Machine(MAIN))==(?);
  Internal_List_VisibleVariables(Machine(MAIN))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MAIN))==(btrue);
  Gluing_List_Invariant(Machine(MAIN))==(btrue);
  Expanded_List_Invariant(Machine(MAIN))==(btrue);
  Abstract_List_Invariant(Machine(MAIN))==(btrue);
  Context_List_Invariant(Machine(MAIN))==(btrue);
  List_Invariant(Machine(MAIN))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MAIN))==(btrue);
  Abstract_List_Assertions(Machine(MAIN))==(btrue);
  Context_List_Assertions(Machine(MAIN))==(btrue);
  List_Assertions(Machine(MAIN))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MAIN))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MAIN))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MAIN))==(skip);
  Context_List_Initialisation(Machine(MAIN))==(skip);
  List_Initialisation(Machine(MAIN))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MAIN))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MAIN))==(btrue);
  List_Constraints(Machine(MAIN))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MAIN))==(operate);
  List_Operations(Machine(MAIN))==(operate)
END
&
THEORY ListInputX IS
  List_Input(Machine(MAIN),operate)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(MAIN),operate)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(MAIN),operate)==(operate)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(MAIN),operate)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(MAIN),operate)==(btrue | skip);
  List_Substitution(Machine(MAIN),operate)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(MAIN))==(?);
  Inherited_List_Constants(Machine(MAIN))==(?);
  List_Constants(Machine(MAIN))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(MAIN))==(?);
  Context_List_Defered(Machine(MAIN))==(?);
  Context_List_Sets(Machine(MAIN))==(?);
  List_Valuable_Sets(Machine(MAIN))==(?);
  Inherited_List_Enumerated(Machine(MAIN))==(?);
  Inherited_List_Defered(Machine(MAIN))==(?);
  Inherited_List_Sets(Machine(MAIN))==(?);
  List_Enumerated(Machine(MAIN))==(?);
  List_Defered(Machine(MAIN))==(?);
  List_Sets(Machine(MAIN))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MAIN))==(?);
  Expanded_List_HiddenConstants(Machine(MAIN))==(?);
  List_HiddenConstants(Machine(MAIN))==(?);
  External_List_HiddenConstants(Machine(MAIN))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MAIN))==(btrue);
  Context_List_Properties(Machine(MAIN))==(btrue);
  Inherited_List_Properties(Machine(MAIN))==(btrue);
  List_Properties(Machine(MAIN))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(MAIN),operate)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MAIN)) == (? | ? | ? | ? | operate | ? | ? | ? | MAIN);
  List_Of_HiddenCst_Ids(Machine(MAIN)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MAIN)) == (?);
  List_Of_VisibleVar_Ids(Machine(MAIN)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MAIN)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(MAIN)) == (Type(operate) == Cst(No_type,No_type));
  Observers(Machine(MAIN)) == (Type(operate) == Cst(No_type,No_type))
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
