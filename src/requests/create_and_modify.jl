# create_and_modify.jl
"""
$RequestHTTR_docstring
"""
@kwdef mutable struct RequestHTTR
    base_url = nothing
    method = "GET"
    body = nothing
    header = nothing
    verbosity = 0
    retries = 0
    retry = false
end

"""
$request_docstring
"""
function request(base_url::AbstractString)
    return RequestHTTR(base_url=base_url)
end

"""
$req_body_raw_docstring
"""
function req_body_raw(req::RequestHTTR, body::Union{AbstractString,Vector{UInt8}}; type=nothing)
    req.body = body
    req.method = "POST"
    req.header = Dict("Content-Type" => type)

    return req
end

"""
$req_body_file_docstring
"""
function req_body_file(req::RequestHTTR, path::AbstractString; type=nothing)
    body::String = Base.read(path, String)
    req.body = body
    req.method = "POST"
    req.header = Dict("Content-Type" => type)

    return req
end

"""
$req_body_json_docstring
"""
function req_body_json(req::RequestHTTR, data::AbstractString)
    req.body = data
    req.header = ["Accept" => "application/json"]
    req.method = "POST"

    return req
end

function req_body_json(req::RequestHTTR, data::AbstractDict; kwargs...)
    return req_body_json(req, JSON3.write(data, kwargs...))
end

"""
$req_body_json_modify_docstring
"""
function req_body_json_modify(req::RequestHTTR, data::AbstractString)

end

"""
$req_body_form_docstring
"""
function req_body_form(req::RequestHTTR)

end

"""
$req_body_multipart_docstring
"""
function req_body_multipart(req::RequestHTTR)

end

"""
$req_cookie_preserve_docstring
"""
function req_cookie_preserve(req::RequestHTTR, path::AbstractString)

end

"""
$req_headers_docstring
"""
function req_headers(req::RequestHTTR; headers::Dict{String,String}=Dict(), redact::Bool=false)
    req.header = merge(req.header, headers)

    return req
end

"""
$req_method_docstring
"""
function req_method(req::RequestHTTR, method::AbstractString)
    method = uppercase(method)
    req.method = method

    return req
end

"""
$req_options_docstring
"""
function req_options(req::RequestHTTR)

end

"""
$req_progress_docstring
"""
function req_progress(req::RequestHTTR)

end

"""
$req_proxy_docstring
"""
function req_proxy(
    req::RequestHTTR,
    url::AbstractString,
    port::Int,
    username::AbstractString,
    password::AbstractString,
    auth::AbstractString="basic"
)

end

"""
$req_template_docstring
"""
function req_template(req::RequestHTTR)

end

"""
$req_timeout_docstring
"""
function req_timeout(req::RequestHTTR, seconds::Number)

end

"""
$req_url_docstring
"""
function req_url(req::RequestHTTR, url::AbstractString)
    req.base_url = url

    return req
end

"""
$req_url_query_docstring
"""
function req_url_query(req::RequestHTTR)

end

"""
$req_url_path_docstring
"""
function req_url_path(req::RequestHTTR)

end

"""
$req_url_path_append_docstring
"""
function req_url_path_append(req::RequestHTTR)

end

"""
$req_user_agent_docstring
"""
function req_user_agent(req::RequestHTTR, user_agent::AbstractString)
    req.header = merge(req.header, Dict("User-Agent" => user_agent))

    return req
end
