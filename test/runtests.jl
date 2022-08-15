using EHTUtils
using Test

@testset "EHTUtils.jl" begin
    @test unitconv(milliarcsecond, as) == 0.001
    @test get_unit("rad") == rad
    @test get_solidangle(1.0, 1.0, satype="b") == pi / (4 * log(2))
end
