"""
This file is setting up some constants
to be used frequently inside this module.
"""
# Gaussian related
const sigma2fwhm = sqrt(8.0 * log(2.0))::Float64
const sigma2hwhm = sqrt(2.0 * log(2.0))::Float64
const fwhm2sigma = 1.0 / sigma2fwhm::Float64
const hwhm2sigma = 1.0 / sigma2hwhm::Float64

# Angular Sizes
const deg2rad = pi / 180.0::Float64
const amin2rad = deg2rad / 60.0::Float64
const asec2rad = deg2rad / 3600.0::Float64
const mas2rad = asec2rad / 1e3::Float64
const uas2rad = asec2rad / 1e6::Float64
const μas2rad = uas2rad::Float64

const rad2deg = 1.0 / deg2rad::Float64
const rad2amin = 1.0 / amin2rad::Float64
const rad2asec = 1.0 / asec2rad::Float64
const rad2mas = 1.0 / mas2rad::Float64
const rad2uas = 1.0 / uas2rad::Float64
const rad2μas = rad2uas::Float64

# Physical constants
const kB = k_B.val::Float64
const c = c_0.val::Float64