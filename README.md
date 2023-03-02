# EHTUtils
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://EHTJulia.github.io/EHTUtils.jl/dev/)
[![Build Status](https://github.com/EHTJulia/EHTUtils.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/EHTJulia/EHTUtils.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/EHTJulia/EHTUtils.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/EHTJulia/EHTUtils.jl)

This is a module written as a common sub module for other libraries under the [EHT Julia organization](https://github.com/EHTJulia). The module aims to implement 
- Quick shortcuts to popular physical or angular units and unit conversion functions based on [Unitful.Unit](https://github.com/PainterQubits/Unitful.jl)
- Popular Conversion factors in EHT data analysis
- Some useful shortcut functions for [PyPlot.jl](https://github.com/JuliaPy/PyPlot.jl) or [Makie.jl](https://makie.juliaplots.org/stable/documentation/backends/glmakie/)

## Installation
Assuming that you already have Julia correctly installed, it suffices to import EHTUtils.jl in the standard way:

```julia
using Pkg
Pkg.add("EHTUtils")
```

## Documentation
The documentation is in preparation, but docstrings of available functions are listed for the [latest](https://ehtjulia.github.io/EHTUtils.jl/dev) version. The stable version has not been released. 

## Acknowledgement
The development of this package has been finantially supported by the following programs.
- v0.1.0 - v0.1.1: [ALMA North American Development Study Cycle 8](https://science.nrao.edu/facilities/alma/science_sustainability/alma-develop-history), National Radio Astronomy Observatory (NRAO), USA

The National Radio Astronomy Observatory is a facility of the National Science Foundation operated under cooperative agreement by Associated Universities, Inc.
