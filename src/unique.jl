export unique_ids

"""
    unique_ids(itr, sort::Bool=true; keywords...)

This is a variant of `unique` function that returns
not only a vector of unique elements in the input, but also
a vector of the reverse index.

# Arguments
- `itr`: iterables
- `sort::Bool`: if the output vector is sorted. Default to `true`.
- `keywords...`: keywords for `permsort` function considered when `sort == true`.

# Example
```julia
# the original vector
vec = [1,1,3,4,2,3,1,4]

# get unique elements and also the reverse index
uvec, idx = unique_ids(vec) # uvec should be [1,3,4,2]

# this will reconstruct the original vector
rec = uvec[idx]
println(rec == vec)
```
"""
function unique_ids(itr, sort::Bool=true; keywords...)
    v = Vector{eltype(itr)}()
    d = Dict{eltype(itr),Int}()
    revid = Vector{Int}()
    for val in itr
        if haskey(d, val)
            push!(revid, d[val])
        else
            push!(v, val)
            d[val] = length(v)
            push!(revid, length(v))
        end
    end

    if sort == false
        return (v, revid)
    else
        sidx = sortperm(v, keywords...)
        vsort = v[sidx]
        sidxrev = Vector{Int}(undef, length(v))
        for i in 1:length(v)
            sidxrev[sidx[i]] = i
        end
        return (vsort, sidxrev[revid])
    end
end