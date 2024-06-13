proj(v, u) = (v ⋅ u) / (u ⋅ u) * u

function gram_schmidt(A)
    orthogonal_basis = []
    for v in eachcol(A)
        u  = v - mapreduce(u->proj(v, u), +, orthogonal_basis)
        push!(orthogonal_basis, u)
    end
    orthonormal_basis = normalize.(orthogonal_basis)
    return orthonormal_basis
end
