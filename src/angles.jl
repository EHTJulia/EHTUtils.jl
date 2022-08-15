export get_solidangle


"""
    get_solidangle(x, [y=0; angunit=u"rad", angunitout=nothing, satype="pixel"])

compute the solid angle for a given set of the angular sizes at specified
units of angular sizes in a specified type.


# Arguments
- `x, y::Number`: the size of the area in two orthogonal directions. if y <= 0, y = x.
- `angunit::Unitful.Units or Unitful.Quantity`: the angular unit of `x` and `y`
- `angunitout::Unitful.Units, Unitful.Quantity or nothing`: 
    the angular unit for the output solid angle. If nothing is specified,
    use the same unit specified in `angunit`.
- `satype`: the type of the output solid angle:
    "pixel" for the solid angle of the rectangular area, and "beam" for the beam solid angle.
"""
function get_solidangle(
    x=1, y=-1;
    angunit=rad,
    angunitout=nothing,
    satype::AbstractString="pixel"
)

    # check x-value
    if x <= 0
        error("x must be positive")
    end

    # Get y-pixel size
    if y <= 0
        y = x
    end

    # Get the conversion factor for the unit
    if angunitout isa Nothing
        aconv = 1.0
    elseif angunitout == angunit
        aconv = 1.0
    else
        aconv = ustrip(angunitout, 1angunit)
    end

    # Get the converstion factor
    satype_ch = lowercase(satype[1])
    if satype_ch == 'b'
        beamcorr = pi / (4 * log(2))
    elseif satype_ch == 'p'
        beamcorr = 1.0
    else
        beamcorr = 1.0
    end

    return beamcorr * x * y * aconv^2
end