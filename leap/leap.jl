"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_leap_year(year::Int)
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0 )
end

