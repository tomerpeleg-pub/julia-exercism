function to_rna(dna)
    complements = Dict('G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')

    return map(
        c ->
            haskey(complements, c) ? complements[c] :
            throw(ErrorException("Invalid DNA strand")),
        dna,
    )
end

