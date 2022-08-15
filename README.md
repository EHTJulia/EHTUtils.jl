# EHTUtils

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://kazuakiyama.github.io/EHTUtils.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://kazuakiyama.github.io/EHTUtils.jl/dev/)
[![Build Status](https://github.com/v/EHTUtils.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/EHTJulia/EHTUtils.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/EHTJulia/EHTUtils.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/EHTJulia/EHTUtils.jl)

This is a module written as a common sub module for other libraries under the [EHT Julia organization](https://github.com/EHTJulia). The module implements 
- Quick shortcuts to popular physical or angular units and unit conversion functions based on [Unitful.Unit](https://github.com/PainterQubits/Unitful.jl)
- Popular Conversion factors in EHT data analysis
- Some useful shortcut functions for [PyPlot.jl](https://github.com/JuliaPy/PyPlot.jl) or [Makie.jl](https://makie.juliaplots.org/stable/documentation/backends/glmakie/)