using LinearAlgebra
# Par Alexis Angers, 2016461

A = [1.0 2.0 3.0;
    2.0 -5.0 3.0
    3.0 3.5 -4.0]
b = ones(3)

# 1) résoudre Ax = b 

### votre code ici
# x = ...
###
x = Array{Float64}(undef, length(b))
x = ldiv!(x, lu(A), b)

# vérification
# si besoin installer le module Test avec:
# ]add Test 
using Test
@test norm(A * x - b) <= sqrt(eps())
