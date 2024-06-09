# perform_a_request.jl
"""
$req_perform_docstring
"""
function req_perform(req::RequestHTTR; path=nothing, verbosity=nothing)

end

"""
$req_perform_stream_docstring
"""
function req_perform_stream(
    req::RequestHTTR,
    callback,
    timeout_sec::Number=Inf,
    buffer_kb::Number=64,
    round::Vector{AbstractString}=["byte", "line"]
)

end

"""
$req_cache_docstring
"""
function req_cache(
    req::RequestHTTR,
    path,
    use_on_error::Bool=false,
    debug::Bool=false,
    max_age::Number=Inf,
    max_n::Number=Inf,
    max_size::Number=1024^3
)

end

"""
$req_error_docstring
"""
function req_error(
    req::RequestHTTR,
    is_error::Bool=false,
    body=nothing
)

end

"""
$req_throttle_docstring
"""
function req_throttle(
    req::RequestHTTR,
    rate::Number,
    realm=nothing
)

end

"""
$req_retry_docstring
"""
function req_retry(
    req::RequestHTTR,
    max_tries=nothing,
    max_seconds=nothing,
    is_transient=nothing,
    backoff=nothing,
    after=nothing
)

end