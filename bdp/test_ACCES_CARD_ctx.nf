Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(test_ACCES_CARD_ctx))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(test_ACCES_CARD_ctx))==(Machine(test_ACCES_CARD_ctx));
  Level(Machine(test_ACCES_CARD_ctx))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(test_ACCES_CARD_ctx)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(test_ACCES_CARD_ctx))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(test_ACCES_CARD_ctx))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(test_ACCES_CARD_ctx))==(?);
  List_Includes(Machine(test_ACCES_CARD_ctx))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(test_ACCES_CARD_ctx))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(test_ACCES_CARD_ctx))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(test_ACCES_CARD_ctx))==(?);
  Context_List_Variables(Machine(test_ACCES_CARD_ctx))==(?);
  Abstract_List_Variables(Machine(test_ACCES_CARD_ctx))==(?);
  Local_List_Variables(Machine(test_ACCES_CARD_ctx))==(?);
  List_Variables(Machine(test_ACCES_CARD_ctx))==(?);
  External_List_Variables(Machine(test_ACCES_CARD_ctx))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(test_ACCES_CARD_ctx))==(?);
  Abstract_List_VisibleVariables(Machine(test_ACCES_CARD_ctx))==(?);
  External_List_VisibleVariables(Machine(test_ACCES_CARD_ctx))==(?);
  Expanded_List_VisibleVariables(Machine(test_ACCES_CARD_ctx))==(?);
  List_VisibleVariables(Machine(test_ACCES_CARD_ctx))==(?);
  Internal_List_VisibleVariables(Machine(test_ACCES_CARD_ctx))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(test_ACCES_CARD_ctx))==(btrue);
  Gluing_List_Invariant(Machine(test_ACCES_CARD_ctx))==(btrue);
  Expanded_List_Invariant(Machine(test_ACCES_CARD_ctx))==(btrue);
  Abstract_List_Invariant(Machine(test_ACCES_CARD_ctx))==(btrue);
  Context_List_Invariant(Machine(test_ACCES_CARD_ctx))==(btrue);
  List_Invariant(Machine(test_ACCES_CARD_ctx))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(test_ACCES_CARD_ctx))==(btrue);
  Abstract_List_Assertions(Machine(test_ACCES_CARD_ctx))==(btrue);
  Context_List_Assertions(Machine(test_ACCES_CARD_ctx))==(btrue);
  List_Assertions(Machine(test_ACCES_CARD_ctx))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(test_ACCES_CARD_ctx))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(test_ACCES_CARD_ctx))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(test_ACCES_CARD_ctx))==(skip);
  Context_List_Initialisation(Machine(test_ACCES_CARD_ctx))==(skip);
  List_Initialisation(Machine(test_ACCES_CARD_ctx))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(test_ACCES_CARD_ctx))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(test_ACCES_CARD_ctx))==(btrue);
  List_Constraints(Machine(test_ACCES_CARD_ctx))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(test_ACCES_CARD_ctx))==(?);
  List_Operations(Machine(test_ACCES_CARD_ctx))==(?)
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
  List_Valuable_Constants(Machine(test_ACCES_CARD_ctx))==(tab1,tab2,tab3);
  Inherited_List_Constants(Machine(test_ACCES_CARD_ctx))==(?);
  List_Constants(Machine(test_ACCES_CARD_ctx))==(tab1,tab2,tab3)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(test_ACCES_CARD_ctx))==(?);
  Context_List_Defered(Machine(test_ACCES_CARD_ctx))==(?);
  Context_List_Sets(Machine(test_ACCES_CARD_ctx))==(?);
  List_Valuable_Sets(Machine(test_ACCES_CARD_ctx))==(?);
  Inherited_List_Enumerated(Machine(test_ACCES_CARD_ctx))==(?);
  Inherited_List_Defered(Machine(test_ACCES_CARD_ctx))==(?);
  Inherited_List_Sets(Machine(test_ACCES_CARD_ctx))==(?);
  List_Enumerated(Machine(test_ACCES_CARD_ctx))==(?);
  List_Defered(Machine(test_ACCES_CARD_ctx))==(?);
  List_Sets(Machine(test_ACCES_CARD_ctx))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(test_ACCES_CARD_ctx))==(?);
  Expanded_List_HiddenConstants(Machine(test_ACCES_CARD_ctx))==(?);
  List_HiddenConstants(Machine(test_ACCES_CARD_ctx))==(?);
  External_List_HiddenConstants(Machine(test_ACCES_CARD_ctx))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(test_ACCES_CARD_ctx))==(btrue);
  Context_List_Properties(Machine(test_ACCES_CARD_ctx))==(btrue);
  Inherited_List_Properties(Machine(test_ACCES_CARD_ctx))==(btrue);
  List_Properties(Machine(test_ACCES_CARD_ctx))==(tab1: 0..15 --> 0..9 & tab2: 0..15 --> 0..9 & tab3: 0..15 --> 0..9 & tab1 = {0|->4,1|->1,2|->3,3|->7,4|->8,5|->9,6|->4,7|->7,8|->1,9|->1,10|->7,11|->5,12|->5,13|->9,14|->0,15|->4} & tab2 = {0|->1,1|->2,2|->3,3|->4,4|->5,5|->6,6|->7,7|->8,8|->9,9|->0,10|->1,11|->2,12|->3,13|->4,14|->5,15|->6} & tab3 = {0|->0,1|->0,2|->1,3|->8,4|->2,5|->6,6|->3,7|->4,8|->4,9|->2,10|->5,11|->9,12|->6,13|->7,14|->7,15|->5})
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(test_ACCES_CARD_ctx)) == (tab1,tab2,tab3 | ? | ? | ? | ? | ? | ? | ? | test_ACCES_CARD_ctx);
  List_Of_HiddenCst_Ids(Machine(test_ACCES_CARD_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(test_ACCES_CARD_ctx)) == (tab1,tab2,tab3);
  List_Of_VisibleVar_Ids(Machine(test_ACCES_CARD_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(test_ACCES_CARD_ctx)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(test_ACCES_CARD_ctx)) == (Type(tab1) == Cst(SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,9)));Type(tab2) == Cst(SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,9)));Type(tab3) == Cst(SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,9))))
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
