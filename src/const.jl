export σ2fwhm, σ2hwhm
export fwhm2σ, hwhm2σ
export amin2rad, asec2rad, mas2rad, μas2rad
export rad2amin, rad2asec, rad2mas, rad2μas
export c, kB

"""
This file is setting up some constants
to be used frequently in EHT data analysis
"""
# sigma, fwhm coversions for Gaussian
const σ2fwhm = √(8.0 * log(2.0))::Float64
const σ2hwhm = √(2.0 * log(2.0))::Float64
const fwhm2σ = 1.0 / σ2fwhm::Float64
const hwhm2σ = 1.0 / σ2hwhm::Float64

# Angular Sizes
#const deg2rad = pi / 180.0::Float64  (there is a standard function with the same name)
const amin2rad = π / 180.0 / 60.0::Float64
const asec2rad = π / 180.0 / 3600.0::Float64
const mas2rad = asec2rad / 1e3::Float64
const μas2rad = asec2rad / 1e6::Float64

#const rad2deg = 1.0 / deg2rad::Float64  (there is a standard function with the same name)
const rad2amin = 1.0 / amin2rad::Float64
const rad2asec = 1.0 / asec2rad::Float64
const rad2mas = 1.0 / mas2rad::Float64
const rad2μas = 1.0 / μas2rad::Float64

# Physical constants in SI units
const kB = k_B.val::Float64
const c = c_0.val::Float64