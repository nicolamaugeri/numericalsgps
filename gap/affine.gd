#############################################################################
##
#W  affine.gd               Manuel Delgado <mdelgado@fc.up.pt>
#W                          Pedro A. Garcia-Sanchez <pedro@ugr.es>
##
#Y  Copyright .........
#############################################################################



###############################################################################
#O BelongsToAffineSemigroup
# Determines if the vector v is in the affine semigroup a
###########################################################################
DeclareOperation("BelongsToAffineSemigroup",[IsHomogeneousList,IsAffineSemigroup]);

###############################################################################
#F BasisOfGroupGivenByEquations
# Computes a basis of a subgroup of Z^n with defining equations 
# Ax =0 \in Z_m1\times\Z_mt \times Z^k, k is n-length(m),
# m=[m1,...,mt]
###########################################################################
DeclareGlobalFunction("BasisOfGroupGivenByEquations");

#############################################################
### 
#F EquationsOfGroupGeneratedBy
# Computes the defining equations of the group of Z^n 
# generated by M
# the output is [A,m] such that Ax=0 mod m are the equations
############################################################
DeclareGlobalFunction("EquationsOfGroupGeneratedBy");


##############################################################
###
#F GluingOfAffineSemigroups
# Determines if there is a gluing of the two affine semigroups
# if so, returns the gluin of them, and fail otherwise
##############################################################
DeclareGlobalFunction("GluingOfAffineSemigroups");

################################################################
###
#F IsFullAffineSemigroup
# Detects if the affine semigroup is full: the nonnegative 
# of the the group spanned by it coincides with the semigroup
# itself; or in other words, if a,b\in S and a-b\in \mathbb N^n,
# then a-b\in S
################################################################
## moved to affine-def
#DeclareGlobalFunction("IsFullAffineSemigroup");


###################### ContejeanDevieAlgorithm
DeclareGlobalFunction("ContejeanDevieAlgorithmForEquations");
DeclareGlobalFunction("ContejeanDevieAlgorithmForInequalities");


###############################################################################
#O FactorizationsVectorWRTList
#
# Computes the set of factorizations of v in terms of the elements of ls 
# That is, a Hilbert basis for ls*X=v
# While using normaliz:
# If ls contains vectors that generate a nonreduced monoid, then it 
# deprecates the infinite part of the solutions, or in other words, it
# returns only the minimal solutions of the above system of equations
# If not using nomaliz: then the above can cause an infinite loop
########################################################################
DeclareOperation("FactorizationsVectorWRTList",[IsHomogeneousList,IsMatrix]);

###############################################################################
#O BettiElementsOfAffineSemigroup
# Computes the Betti elements of the affine semigroup a
###########################################################################
DeclareOperation("BettiElementsOfAffineSemigroup",[IsAffineSemigroup]);

###############################################################################
#O MinimalPresentationOfAffineSemigroup
# Computes a minimal presentation of the affine semigroup a
###########################################################################
DeclareOperation("MinimalPresentationOfAffineSemigroup",[IsAffineSemigroup]);

###############################################################################
#F CatenaryDegreeOfAffineSemigroup
# Computes the catenary degree of the affine semigroup a
###########################################################################
DeclareGlobalFunction("CatenaryDegreeOfAffineSemigroup",[IsAffineSemigroup]);

#############################################################################
##
#O  HilbertBasisOfSystemOfHomogeneousEquations
#
# Computes the Hilbert basis of the system A X=0 mod md, where the rows
# of A are the elements of ls.
# md can be empty of have some modulus, if the length of md is smaller than 
# the lengths of the elements of ls, then the rest of equations are considered
# to be homogeneous linear Diophantine equations
##########################################################################
DeclareOperation("HilbertBasisOfSystemOfHomogeneousEquations",[IsMatrix,IsHomogeneousList]);

#############################################################################
##
#O  HilbertBasisOfSystemOfHomogeneousInequalities
#
# Computes the Hilbert basis of the system ls*X>=0 over the nonnegative 
# integers
##########################################################################
DeclareOperation("HilbertBasisOfSystemOfHomogeneousInequalities",[IsMatrix]);

###############################################################################
##
#O OmegaPrimalityOfElementInAffineSemigroup
#
# Computes the omega-primality of v in the monoid a
###########################################################################
DeclareOperation("OmegaPrimalityOfElementInAffineSemigroup",[IsHomogeneousList,IsAffineSemigroup]);

###############################################################################
##
#F OmegaPrimalityOfAffineSemigroup
#
# Computes the omega primality of the affine semigroup a
###########################################################################
DeclareGlobalFunction("OmegaPrimalityOfAffineSemigroup");

###############################################################################
#F ElasticityOfAffineSemigroup
# Computes the elasticity of the affine semigroup a
###########################################################################
DeclareGlobalFunction("ElasticityOfAffineSemigroup");

###############################################################################
##
#F Lawrence lifting of an affine semigroup
##############################################################################
DeclareGlobalFunction("LawrenceLiftingOfAffineSemigroup");


###############################################################################
##
#F PrimitiveElementsOfAffineSemigroup_Normaliz
# An implementation of PrimitiveElementsOfAffineSemigroup using 
# Normaliz
#####################################################################
DeclareOperation("PrimitiveElementsOfAffineSemigroup",[IsAffineSemigroup]);

###############################################################################
##
#F TameDegreeOfAffineSemigroup
# Computes the tame degree of the affine semigroup a
###########################################################################
DeclareGlobalFunction("TameDegreeOfAffineSemigroup");

###############################################################################
## 
###############################################################################
###############################################################################
##
#F RandomAffineSemigroup
# Returns an affine semigroup generated by a random n'*d' matrix where d' (the dimension) is randomly choosen from [1..d] and n' (the number of generators) is randomly choosen from [1..n]
###########################################################################
DeclareGlobalFunction("RandomAffineSemigroup");

###############################################################################
##
#F RandomFullAffineSemigroup
# Computes the tame degree of the affine semigroup a
###########################################################################
DeclareGlobalFunction("RandomFullAffineSemigroup");


##########################################################################
##
#F NumSgpsUseNormaliz
#  Loads the package NormalizInterface and reads affine-extra-ni
##########################################################################
DeclareGlobalFunction("NumSgpsUseNormaliz");

##########################################################################
##
#F NumSgpsUseSingular
#  Loads the package singular and reads affine-extra-s
##########################################################################
DeclareGlobalFunction("NumSgpsUseSingular");

##########################################################################
##
#F NumSgpsUseSingularInterface
#  Loads the package SingularInterface and reads affine-extra-si
##########################################################################
DeclareGlobalFunction("NumSgpsUseSingularInterface");

##########################################################################
##
#F NumSgpsUse4ti2
#  Loads the package 4ti2Interface and reads affine-extra-4ti2
##########################################################################
DeclareGlobalFunction("NumSgpsUse4ti2");

