#############################################################################
# This file contains obsolet functions which are to be kept during a while for
# compatibility
# WARNING: the manual must be updated before removing the functions
#############################################################################
##
#F  GeneratorsOfNumericalSemigroupNC(S)
##
##  Returns a set of generators of the numerical
##  semigroup S.
##
#####From version 0.980 is just a synonym of the check version of the function
#############################################################################
DeclareSynonym( "GeneratorsOfNumericalSemigroupNC",GeneratorsOfNumericalSemigroup);

#############################################################################
##
#F  ReducedSetOfGeneratorsOfNumericalSemigroup(arg)
####From version 0.980 is a synonym of MinimalGenerating...
##
##  Returns a set with possibly fewer generators than those recorded in <C>S!.generators</C>. It changes <C>S!.generators</C> to the set returned.
##The function has 1 to 3 arguments. One of them a numerical semigroup. Then an argument is a boolean (<E>true</E> means that all the elements not belonging to the Apery set with respect to the multiplicity are removed; the default is "false") and another argument is a positive integer <M>n</M> (meaning that generators that can be written as the sum of <n> or less generators are removed; the default is "2"). The boolean or the integer may not be present. If a minimal generating set for <M>S</M> is known or no generating set is known, then the minimal generating system is returned.
##
#DeclareGlobalFunction("ReducedSetOfGeneratorsOfNumericalSemigroup");
DeclareSynonym("ReducedSetOfGeneratorsOfNumericalSemigroup",MinimalGeneratingSystemOfNumericalSemigroup);
#############################################################################
## the name "RandomNumericalSemigroupWithPseudoFrobeniusNumbers" should be removed in a further version... (it is not documented)
DeclareSynonym("RandomNumericalSemigroupWithPseudoFrobeniusNumbers",ANumericalSemigroupWithPseudoFrobeniusNumbers);
