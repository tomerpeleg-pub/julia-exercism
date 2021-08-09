"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand::String)
    counts = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    upper = uppercase(strand)

    for i = firstindex(upper):lastindex(upper)
        char = upper[i]

        if !haskey(counts, char)
            throw(DomainError(char, "Invalid nucleotide"))
        end
        
        counts[char] += 1
    end

    return counts
end
