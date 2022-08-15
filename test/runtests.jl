using EHTUtils
using Test

@testset "EHTUtils.jl" begin
    # Write your tests here.
    @test unitconv(milliarcsecond, as) == 0.001
    @test get_unit("rad") == rad
end
