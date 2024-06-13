using Revise
using LinearAlgebra

include("gram_schmidt.jl")




function make_triu(entries)
    n = length(entries)
    @assert sqrt(8n )


function QR_decompose(A::Matrix)
    orthonormal_basis = gram_schmidt(A)
    Q = hcat(orthonormal_basis)
    R = 
end

# Follow the example from Wikipedia
A = [
    12  -51   4;
     6  167 -68;
    -4   24 -41
]