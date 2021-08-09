function score(x, y)
    dist = sqrt(x^2 + y^2)

    if dist > 10
        return 0 # outside
    elseif dist > 5
        return 1 # outer
    elseif dist > 1
        return 5 # middle
    else
        return 10 # inner
    end
end
