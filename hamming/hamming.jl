"Get the hamming distance of two strings"
function distance(a::String, b::String)
    if length(a) ≠ length(b)
        throw(ArgumentError("Cannot calculate distance of strings of different lengths"))
    end

    map(≠, a, b) |> sum
end
