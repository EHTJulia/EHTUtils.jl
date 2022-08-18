export get_solidangle


"""
    get_solidangle(x, [y=0; angunit=u"rad", angunitout=nothing, satype="pixel"])

compute the solid angle for a given set of the angular sizes at specified
units of angular sizes in a specified type.

# Arguments
- `Δx, Δy::Real`:
    the size of the area in two orthogonal directions. if `Δy <= 0`, `Δy = Δx`.
- `angunit::Unitful.Units or Unitful.Quantity`:
    the angular unit of `Δx` and `Δy`. Default is `rad`
- `angunitout::Unitful.Units, Unitful.Quantity or nothing`: 
    the angular unit for the output solid angle. If nothing is specified,
    use the same unit specified in `angunit`.
- `satype::Symbol`
    The type of the output solid angle:
    `:pixel` for the solid angle of the rectangular area, and
    `:beam` for the beam solid angle.
    For `:beam`, Δx, Δy will be interperted as Gaussian FWHMs.
"""
function get_solidangle(
    Δx::Real=1,
    Δy::Real=-1;
    angunit=rad,
    angunitout=nothing,
    satype::Symbol=:pixel
)

    # check x-value
    if Δx <= 0
        @throwerror ArgumentError "Δx must be positive"
    end

    # Get y-pixel size
    if Δy <= 0
        Δy = Δx
    end

    # Get the conversion factor for the angular units
    if isnothing(angunitout)
        fa = 1
    elseif angunitout == angunit
        fa = 1
    else
        fa = ustrip(angunitout, 1angunit)
    end

    # Get the converstion factor
    if satype == :beam
        fb = π / (4 * log(2))
    elseif satype == :pixel
        fb = 1
    else
        @throwerror ArgumentError "satype must be :beam or :pixel"
    end

    return Δx * Δy * fa^2 * fb
end