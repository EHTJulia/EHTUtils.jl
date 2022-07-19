module EHTUtils 
# Physical constants
using PhysicalConstants.CODATA2018: k_B, c_0  # for const.jl
# Uniftful
using Unitful
using UnitfulAngles
using UnitfulAstro

# popular constants
include("const.jl")

# unit coversion
include("units.jl")

# functions related to angles
include("angles.jl")
end