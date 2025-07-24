Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ACCES_CARD))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ACCES_CARD))==(Machine(ACCES_CARD));
  Level(Machine(ACCES_CARD))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ACCES_CARD)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ACCES_CARD))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ACCES_CARD))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ACCES_CARD))==(?);
  List_Includes(Machine(ACCES_CARD))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ACCES_CARD))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ACCES_CARD))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ACCES_CARD))==(?);
  Context_List_Variables(Machine(ACCES_CARD))==(?);
  Abstract_List_Variables(Machine(ACCES_CARD))==(?);
  Local_List_Variables(Machine(ACCES_CARD))==(?);
  List_Variables(Machine(ACCES_CARD))==(?);
  External_List_Variables(Machine(ACCES_CARD))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ACCES_CARD))==(?);
  Abstract_List_VisibleVariables(Machine(ACCES_CARD))==(?);
  External_List_VisibleVariables(Machine(ACCES_CARD))==(?);
  Expanded_List_VisibleVariables(Machine(ACCES_CARD))==(?);
  List_VisibleVariables(Machine(ACCES_CARD))==(?);
  Internal_List_VisibleVariables(Machine(ACCES_CARD))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ACCES_CARD))==(btrue);
  Gluing_List_Invariant(Machine(ACCES_CARD))==(btrue);
  Expanded_List_Invariant(Machine(ACCES_CARD))==(btrue);
  Abstract_List_Invariant(Machine(ACCES_CARD))==(btrue);
  Context_List_Invariant(Machine(ACCES_CARD))==(btrue);
  List_Invariant(Machine(ACCES_CARD))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ACCES_CARD))==(btrue);
  Abstract_List_Assertions(Machine(ACCES_CARD))==(btrue);
  Context_List_Assertions(Machine(ACCES_CARD))==(btrue);
  List_Assertions(Machine(ACCES_CARD))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ACCES_CARD))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ACCES_CARD))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ACCES_CARD))==(skip);
  Context_List_Initialisation(Machine(ACCES_CARD))==(skip);
  List_Initialisation(Machine(ACCES_CARD))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ACCES_CARD))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ACCES_CARD))==(btrue);
  List_Constraints(Machine(ACCES_CARD))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ACCES_CARD))==(is_valid);
  List_Operations(Machine(ACCES_CARD))==(is_valid)
END
&
THEORY ListInputX IS
  List_Input(Machine(ACCES_CARD),is_valid)==(tab)
END
&
THEORY ListOutputX IS
  List_Output(Machine(ACCES_CARD),is_valid)==(ok)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(ACCES_CARD),is_valid)==(ok <-- is_valid(tab))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(ACCES_CARD),is_valid)==(tab: 0..15 --> 0..9)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(ACCES_CARD),is_valid)==(tab: 0..15 --> 0..9 | ok:=bool((SIGMA(xx).(xx: dom(tab) & xx mod 2/=0 | tab(xx))+SIGMA(xx).(xx: dom(tab) & xx mod 2 = 0 & tab(xx)*2<9 | tab(xx)*2)+SIGMA(xx).(xx: dom(tab) & xx mod 2 = 0 & tab(xx)*2>9 | tab(xx)*2/10+tab(xx)*2 mod 10)) mod 10 = 0));
  List_Substitution(Machine(ACCES_CARD),is_valid)==(ok:=bool((SIGMA(xx).(xx: dom(tab) & xx mod 2/=0 | tab(xx))+SIGMA(xx).(xx: dom(tab) & xx mod 2 = 0 & tab(xx)*2<9 | tab(xx)*2)+SIGMA(xx).(xx: dom(tab) & xx mod 2 = 0 & tab(xx)*2>9 | tab(xx)*2/10+tab(xx)*2 mod 10)) mod 10 = 0))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ACCES_CARD))==(?);
  Inherited_List_Constants(Machine(ACCES_CARD))==(?);
  List_Constants(Machine(ACCES_CARD))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(ACCES_CARD))==(?);
  Context_List_Defered(Machine(ACCES_CARD))==(?);
  Context_List_Sets(Machine(ACCES_CARD))==(?);
  List_Valuable_Sets(Machine(ACCES_CARD))==(?);
  Inherited_List_Enumerated(Machine(ACCES_CARD))==(?);
  Inherited_List_Defered(Machine(ACCES_CARD))==(?);
  Inherited_List_Sets(Machine(ACCES_CARD))==(?);
  List_Enumerated(Machine(ACCES_CARD))==(?);
  List_Defered(Machine(ACCES_CARD))==(?);
  List_Sets(Machine(ACCES_CARD))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ACCES_CARD))==(?);
  Expanded_List_HiddenConstants(Machine(ACCES_CARD))==(?);
  List_HiddenConstants(Machine(ACCES_CARD))==(?);
  External_List_HiddenConstants(Machine(ACCES_CARD))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ACCES_CARD))==(btrue);
  Context_List_Properties(Machine(ACCES_CARD))==(btrue);
  Inherited_List_Properties(Machine(ACCES_CARD))==(btrue);
  List_Properties(Machine(ACCES_CARD))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(ACCES_CARD),is_valid)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ACCES_CARD)) == (? | ? | ? | ? | is_valid | ? | ? | ? | ACCES_CARD);
  List_Of_HiddenCst_Ids(Machine(ACCES_CARD)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ACCES_CARD)) == (?);
  List_Of_VisibleVar_Ids(Machine(ACCES_CARD)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ACCES_CARD)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(ACCES_CARD)) == (Type(is_valid) == Cst(btype(BOOL,?,?),SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,9))));
  Observers(Machine(ACCES_CARD)) == (Type(is_valid) == Cst(btype(BOOL,?,?),SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,9))))
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
