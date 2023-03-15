export mjd2jd
export jd2mjd
export mjd2datetime
export datetime2mjd
export mjd2hour

"""
    mjd2jd(mjd)

Convert MJD to JD.
"""
@inline mjd2jd(mjd) = mjd .+ 2400000.5

"""
    mjd2jd(jd)

Convert JD to MJD.
"""
@inline jd2mjd(jd) = jd .- 2400000.5

"""
    datetime2mjd(dt)

Convert the input Datetime object into MJD
"""
@inline datetime2mjd(dt::DateTime) = jd2mjd(datetime2julian(dt))::Float64

"""
    mjd2datetime(mjd::Number)

Convert the input Datetime object into MJD
"""
@inline mjd2datetime(mjd::Number) = julian2datetime(mjd2jd(mjd))::DateTime

"""
    mjd2hour(mjd, refmjd=nothing)

Convert a given array of mjd into utc hours.

- `mjd::AbstractArray`: the input array of the modified Julian dates. 
- `refmjd::Number`: the reference date. Default to `floor(minimum(mjd))`.
"""
function mjd2hour(mjd::AbstractArray, refmjd::Number=floor(minimum(mjd)))
    return @inbounds (mjd .- refmjd) .* 24
end