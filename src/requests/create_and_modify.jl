# create_and_modify.jl
"""
$Request_docstring
"""
@kwdef mutable struct Request
    base_url::AbstractString = ""
    method::AbstractString = "GET"
    body::Any = nothing
    header::AbstractDict = Dict()
    verbosity::Int = 0
    retries::Int = 0
    retry::Bool = false
end

"""
$request_docstring
"""
function request(base_url::AbstractString)::HTTR.Request
    return HTTR.Request(base_url=base_url)
end

"""
$req_body_raw_docstring
"""
function req_body_raw(req::HTTR.Request, body::Union{AbstractString,Vector{UInt8}}; type=nothing)
    req.body = body
    req.method = "POST"
    req.header = Dict("Content-Type" => type)

    return req
end

"""
$req_body_file_docstring
"""
function req_body_file(req::HTTR.Request, path::AbstractString; type=nothing)
    body::String = Base.read(path, String)
    req.body = body
    req.method = "POST"
    req.header = Dict("Content-Type" => type)

    return req
end

"""
$req_body_json_docstring
"""
function req_body_json(req::HTTR.Request, data::AbstractString)
    req.body = data
    req.header = ["Accept" => "application/json"]
    req.method = "POST"

    return req
end

function req_body_json(req::HTTR.Request, data::AbstractDict)
    return req_body_json(req, JSON3.write(data))
end

"""
$req_body_json_modify_docstring
"""
function req_body_json_modify(req::HTTR.Request, data::AbstractString)

end

"""
$req_body_form_docstring
"""
function req_body_form(req::HTTR.Request)

end

"""
$req_body_multipart_docstring
"""
function req_body_multipart(req::HTTR.Request)

end

"""
$req_cookie_preserve_docstring
"""
function req_cookie_preserve(req::HTTR.Request, path::AbstractString)

end

"""
$req_headers_docstring
"""
function req_headers(req::HTTR.Request, headers::AbstractDict=Dict(); redact::Bool=false)
    req.header = merge(req.header, headers)

    return req
end

"""
$req_method_docstring
"""
function req_method(req::HTTR.Request, method::AbstractString)
    method = uppercase(method)
    req.method = method

    return req
end

"""
$req_options_docstring
"""
function req_options(req::HTTR.Request)

end

"""
$req_progress_docstring
"""
function req_progress(req::HTTR.Request)

end

"""
$req_proxy_docstring
"""
function req_proxy(
    req::HTTR.Request,
    url::AbstractString;
    port::Union{Nothing,Int}=nothing,
    username::AbstractString="",
    password::AbstractString="",
    auth::AbstractString="basic"
)

end

"""
$req_template_docstring
"""
function req_template(req::HTTR.Request)

end

"""
$req_timeout_docstring
"""
function req_timeout(req::HTTR.Request, seconds::Int)

end

"""
$req_url_docstring
"""
function req_url(req::HTTR.Request, url::AbstractString)
    req.base_url = url

    return req
end

"""
$req_url_query_docstring
"""
function req_url_query(req::HTTR.Request)

end

"""
$req_url_path_docstring
"""
function req_url_path(req::HTTR.Request)

end

"""
$req_url_path_append_docstring
"""
function req_url_path_append(req::HTTR.Request)

end

"""
$req_user_agent_docstring
"""
function req_user_agent(req::HTTR.Request, user_agent::AbstractString)
    req.header = merge(req.header, Dict("User-Agent" => user_agent))

    return req
end
