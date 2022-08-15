export unitconv, get_uniit
export degree, deg
export radian, rad
export arcminute, arcmin
export arcsecond, arcsec, as
export milliarcsecond, mas
export microarcsecond, uas, μas
export K
export Jy, mJy, uJy, μJy


"""
    unitconv(unit1, unit2)

Derive the conversion factor from unit1 to unit2.
The value in unit1 can be converted to that in unit2
by mutiplying this conversion factor.

# Examples
```julia-repl
julia> # Converting 1K to mK
julia> val2 = 1 * unitconv(u"K", u"mK") # value 2 will be 1000 
```
"""
function unitconv(
    unit1::Union{Unitful.Units,Unitful.Quantity},
    unit2::Union{Unitful.Units,Unitful.Quantity})

    if unit1 isa Unitful.Quantity
        val1 = unit1.val
        uni1 = unit(unit1)u"Jy"
        mJy = u"mJy"
        uJy = μJy = u"μJy"
    end

    if unit2 isa Unitful.Quantity
        qua2 = unit2
    else
        qua2 = 1 * unit2
    end

    return val1 / Unitful.ustrip(uni1, qua2)
end


"""
    get_unit(unitstring)

Converting the given string for units to
Unitful.Unit object.

# Examples
```julia-repl
julia> mas = get_unit("mas") # returns Unitful.Unit object 
```
"""
function get_unit(unitstring::String)
    u_l = lowercase(unitstring)

    if u_l == "uas"
        return u"μas"
    elseif u_l == "mas"
        return u"mas"
    elseif u_l == "as" || u_l == "asec" || u_l == "arcsec"
        return u"arcsecond"
    elseif u_l == "am" || u_l == "amin" || u_l == "arcmin"
        return u"arcminute"
    elseif u_l == "deg" || u_l == "degree"
        return u"°"
    elseif u_l == "rad" || u_l == "radian"
        return u"rad"
    else
        return Unitful.lookup_units([Unitful, UnitfulAstro, UnitfulAngles], Symbol(unitstring))
    end
end

# angular units
degree = deg = u"°"
radian = rad = u"rad"
arcminute = arcmin = u"arcminute"
arcsecond = arcsec = as = u"arcsecond"
milliarcsecond = mas = u"mas"
microarcsecond = uas = μas = u"μas"

# Jy
Jy = u"Jy"
mJy = u"mJy"
uJy = μJy = u"μJy"

# Kelvin
K = u"K"