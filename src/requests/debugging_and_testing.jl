# debugging_and_testing.jl
const LAST_RESPONSE = Ref{Union{Nothing,HTTP.Messages.Response}}(nothing)

function update_last_response(resp::HTTP.Messages.Response)
    return LAST_RESPONSE[] = resp
end

"""
$last_response_docstring
"""
function last_response()
    return LAST_RESPONSE[]
end

const LAST_REQUEST = Ref{Union{Nothing,HTTR.Request}}(nothing)

function update_last_request(req::HTTR.Request)
    return LAST_REQUEST[] = req
end

"""
$last_request_docstring
"""
function last_request()
    return LAST_REQUEST[]
end

"""
$req_dry_run_docstring
"""
function req_dry_run(req::HTTR.Request; quiet::Bool=false, redact_headers::Bool=true)
    if quiet
        return ""
    end

    if redact_headers
        # TODO redact headers
    end

    # sends the req to a local web server
end

"""
$req_verbose_docstring
"""
function req_verbose(req::HTTR.Request, verbosity::Int)
    verbosity >= 0 || verbosity <= 3 || throw("verbosity must be 0, 1 or 2")
    req.verbosity = verbosity

    return req
end

"""
$with_mocked_responses_docstring
"""
function with_mocked_responses()

end

"""
$local_mocked_responses_docstring
"""
function local_mocked_responses()

end

"""
$with_verbosity_docstring
"""
function with_verbosity(req::HTTR.Request)
    return req_verbose(req, 2)
end