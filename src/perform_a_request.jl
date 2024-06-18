# perform_a_request.jl
"""
$req_perform_docstring
"""
function req_perform(req::HTTR.Request)::HTTP.Messages.Response
    req_arguments::Vector = [
        req.method,
        req.base_url,
        req.headers,
        req.body
    ]

    filter!(!isnothing, req_arguments)

    if req.progress
        prog = ProgressMeter.Progress(20, desc="performing request")
        ProgressMeter.next!(prog)
    end

    resp::HTTP.Messages.Response = HTTP.request(
        req_arguments...,
        retry=req.retry,
        retries=req.retries,
        readtimeout=req.timeout,
        verbose=req.verbosity
    )

    if req.progress
        ProgressMeter.next!(prog)
    end

    update_last_request(req)
    update_last_response(resp)

    if req.progress
        ProgressMeter.next!(prog)
        ProgressMeter.finish!(prog)
    end

    return resp
end

"""
$req_perform_stream_docstring
"""
function req_perform_stream(
    req::HTTR.Request,
    callback;
    timeout_sec::Number=Inf,
    buffer_kb::Number=64,
    round::AbstractString="line"
)

end

"""
$req_cache_docstring
"""
function req_cache(
    req::HTTR.Request,
    path::AbstractString;
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
    req::HTTR.Request;
    is_error::Bool=false,
    body=nothing
)

end

"""
$req_throttle_docstring
"""
function req_throttle(
    req::HTTR.Request,
    rate::Number;
    realm=nothing
)

end

"""
$req_retry_docstring
"""
function req_retry(req::HTTR.Request; max_tries::Int)::HTTR.Request
    req.retries = max_tries
    req.retry = n > 0 ? true : false

    return req
end