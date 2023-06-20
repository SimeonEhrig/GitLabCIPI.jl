using MonteCarloPI
using Test

@testset "MonteCarloPI.jl" begin
    for i in 1:100
        p = MonteCarloPI.get_pi(42)
        @test p > 3.1 && p < 3.2
    end
end
