export throwerror

"""
    @throwerror exception message

Logging an error with the given `message`, and then throw
the given exception (`e`) with the same message.

# Examples
```julia-repl
julia> @throwerror ArgumentError "Error Message"
┌ Error: Error Message
└ @ Main <PATH>/EHTUtils/src/logging.jl:8
ERROR: ArgumentError: Error Message
Stacktrace:
 [1] top-level scope
   @ logging.jl:8
```
"""
macro throwerror(e, message::AbstractString)
    return :(@error $(message); throw($(e)($message)))
end