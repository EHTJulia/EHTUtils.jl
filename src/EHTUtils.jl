module EHTUtils
using Dates
using Logging
using PhysicalConstants.CODATA2018: k_B, c_0  # for const.jl
using Unitful
using UnitfulAngles
using UnitfulAstro

# some quick tools for Logging
include("logging.jl")

# popular constants
include("const.jl")

# unit coversion
include("units.jl")

# functions related to angles
include("angles.jl")

# time-related functions
include("datetime.jl")

end