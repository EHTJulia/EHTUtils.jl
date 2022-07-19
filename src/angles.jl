function get_solidangle(;
    x::Number, y::Number=0,
    angunit::Union{Unitful.Units,Unitful.Quantity}=u"rad",
    angunitout::Union{Unitful.Units,Unitful.Quantity,Nothing}=nothing,
    satype::String="pixel")

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
    if satype_ch == "b"
        beamcorr = pi / (4 * log(2))
    elseif satype_ch == "p"
        beamcorr = 1.0
    else
        beamcorr = 1.0
    end

    return beamcorr * x * y * aconv^2
end