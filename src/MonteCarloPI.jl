module MonteCarloPI

"""
    is_in_radius(x::Number, y::Number, r::Number)::Bool

Checks if point with the coordinates x and y is in the radius of r.
"""
function is_in_radius(x::Number, y::Number, r::Number)::Bool
    d = sqrt(x^2 + y^2)
    return d <= r
end


"""
    get_pi([, total_number_of_points::Number=1000000, [, radius::Number=1000]])::Real

Calculate the PI via monte carlo method.
"""
function get_pi(total_number_of_points::Number=1000000, radius::Number=1000)::Real
    number_of_points_in = reduce(+, broadcast(is_in_radius, rand(0:radius, total_number_of_points), rand(0:radius, total_number_of_points), radius))
    return 4 * (number_of_points_in / total_number_of_points)
end
end
