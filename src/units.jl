function unitconv(
    unit1::Union{Unitful.Units,Unitful.Quantity},
    unit2::Union{Unitful.Units,Unitful.Quantity})
    """
    Derive the conversion factor from unit1 to unit2.
    The value in unit1 can be converted to that in unit2
    by mutiplying this conversion factor.

    # Examples
    ```julia-repl
    julia> # Converting 1K to mK
    julia> val2 = 1 * unitconv(u"K", u"mK") # value 2 will be 1000 
    ```
    """

    if unit1 isa Unitful.Quantity
        val1 = unit1.val
        uni1 = unit(unit1)
    else
        val1 = 1
        uni1 = unit1
    end

    if unit2 isa Unitful.Quantity
        qua2 = unit2
    else
        qua2 = 1 * unit2
    end

    return val1 / Unitful.ustrip(uni1, qua2)
end

function get_unit(angunit::String)
    au_l = lowercase(angunit)

    if au_l == "uas"
        return u"μas"
    elseif au_l == "mas"
        return u"mas"
    elseif au_l == "as" || au_l == "asec" || au_l == "arcsec"
        return u"arcsecond"
    elseif au_l == "am" || au_l == "amin" || au_l == "arcmin"
        return u"arcminute"
    elseif au_l == "deg" || au_l == "degree"
        return u"°"
    elseif "radian"
        return u"rad"
    else
        return dimension(Unitful.lookup_units([Unitful, UnitfulAstro, UnitfulAngles], Symbol(angunit)))
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