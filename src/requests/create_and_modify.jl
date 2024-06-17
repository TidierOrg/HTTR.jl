# create_and_modify.jl
"""
$Request_docstring
"""
@kwdef mutable struct Request
    base_url::AbstractString = ""
    method::AbstractString = "GET"
    body::Any = nothing
    headers::AbstractVector = []
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

function merge_headers(old_headers::AbstractVector, new_headers::AbstractVector)
    header_dict::Dict = Dict(old_headers)

    for (header, header_value) in new_headers
        header_dict[header] = header_value
    end

    return collect(header_dict)
end

"""
$req_body_raw_docstring
"""
function req_body_raw(req::HTTR.Request, body::Union{AbstractString,Vector{UInt8}}; type::AbstractString="")
    req.method = "POST"

    if type !== ""
        req.headers = merge_headers(req.headers, ["Content-Type" => type])
    end

    req.body = body

    return req
end

"""
$req_body_file_docstring
"""
function req_body_file(req::HTTR.Request, path::AbstractString; type::AbstractString="")
    req.method = "POST"

    if type !== ""
        req.headers = merge_headers(req.headers, ["Content-Type" => type])
    end
    
    req.body = Base.read(path, String)

    return req
end

"""
$req_body_json_docstring
"""
function req_body_json(req::HTTR.Request, data::AbstractString; type::AbstractString="application/json")
    req.method = "POST"

    if type !== ""
        req.headers = merge_headers(req.headers, ["Content-Type" => type])
    end

    req.body = data

    return req
end

function req_body_json(req::HTTR.Request, data::AbstractDict; type::AbstractString="application/json")
    return req_body_json(req, JSON3.write(data), type=type)
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
function req_headers(req::HTTR.Request, headers::AbstractVector; redact::Bool=false)
    if redact
        headers::Vector = [h for h in headers if !(h[1] in Set(["Authorization", "Cookie"]))]
    end

    req.headers = merge_headers(req.headers, headers)

    return req
end

"""
$req_method_docstring
"""
function req_method(req::HTTR.Request, method::AbstractString)
    req.method = uppercase(method)

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
    req.headers = merge_headers(req.headers, ["timeout_ms" => string(seconds * 1000)])

    return req
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
    req.headers = merge_headers(req.headers, ["User-Agent" => user_agent])

    return req
end
