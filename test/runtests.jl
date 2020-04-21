using svopt, Test

@testset "Newton_Raphson" begin
    @test Newton_Raphson(x -> x^3 - 5x + 1, x -> 3x^2 - 5, 0) == 0.20163967572340463
    @test Newton_Raphson(x -> exp(x) - x^4, x -> exp(x) - 4x^3, 2) == 1.4296118247255556
end