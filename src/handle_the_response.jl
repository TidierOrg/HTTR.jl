# handle_the_response.jl
"""
$resp_body_raw_docstring
"""
function resp_body_raw()

end

"""
$resp_has_body_docstring
"""
function resp_has_body()

end

"""
$resp_body_string_docstring
"""
function resp_body_string()

end

"""
$resp_body_json_docstring
"""
function resp_body_json()

end

"""
$resp_body_html_docstring
"""
function resp_body_html()

end

"""
$resp_body_xml_docstring
"""
function resp_body_xml()

end

"""
$resp_check_content_type_docstring
"""
function resp_check_content_type()

end

"""
$resp_content_type_docstring
"""
function resp_content_type(resp::HTTP.Response)

end

"""
$resp_encoding_docstring
"""
function resp_encoding(resp::HTTP.Response)

end

"""
$resp_date_docstring
"""
function resp_date(resp::HTTP.Response)

end

"""
$resp_headers_docstring
"""
function resp_headers(resp::HTTP.Response, filter::Union{Regex,Nothing}=nothing)
    if filter === nothing
        response_headers = resp.headers
    else
        response_headers = Dict(pair for pair in resp.headers if occursin(filter, lowercase(pair.first)))
    end

    for (key, value) in response_headers
        println("$key: $value")
    end

    return response_headers
end

"""
$resp_header_docstring
"""
function resp_header(resp::HTTP.Response, header::AbstractString, default=nothing)
    header_lower = lowercase(header)

    for pair in resp.headers
        if lowercase(pair.first) == header_lower
            return pair.second
        end
    end

    return default
end

"""
$resp_header_exists_docstring
"""
function resp_header_exists(resp::HTTP.Response, header::AbstractString)::Bool
    header_lower::String = lowercase(header)

    for pair in resp.headers
        if lowercase(pair.first) == header_lower
            return true
        end
    end

    return false
end

"""
$resp_link_url_docstring
"""
function resp_link_url(resp::HTTP.Response, rel::AbstractString)

end

"""
$resp_raw_docstring
"""
function resp_raw(resp::HTTP.Response)
    status_line = string(resp.status)
    headers = join(["$(k): $(v)" for (k, v) in resp.headers], "\n")
    body = String(resp.body)
    raw_response = "$status_line\n\n$headers\n\n$body"
    println(raw_response)
    return resp
end

"""
$resp_retry_after_docstring
"""
function resp_retry_after(resp::HTTP.Response)::Dates.Time

end

"""
$resp_status_docstring
"""
function resp_status(resp::HTTP.Response)::Int
    return resp.status
end

"""
$resp_status_desc_docstring
"""
function resp_status_desc(resp::HTTP.Response)::String
    
end

"""
$resp_is_error_docstring
"""
function resp_is_error(resp::HTTP.Response)::Bool
    status_code = resp.status
    return status_code >= 400 && status_code < 600
end

"""
$resp_check_status_docstring
"""
function resp_check_status()

end

"""
$resp_url_docstring
"""
function resp_url(resp::HTTP.Response)
    return resp.request.url
end

"""
$resp_url_path_docstring
"""
function resp_url_path(resp::HTTP.Response)
    url = resp.request.url
    uri = URIs.URI(url)
    return URIs.splitpath(uri)
end

"""
$resp_url_query_docstring
"""
function resp_url_query(resp::HTTP.Response, name::AbstractString, default=nothing)
    url = resp.request.url
    uri = URIs.URI(url)
    query_dict = URIs.queryparams(uri)
    return Base.get(query_dict, name, default)
end

"""
$resp_url_queries_docstring
"""
function resp_url_queries(resp::HTTP.Response)
    url = resp.request.url
    uri = URIs.URI(url)
    return URIs.queryparams(uri)
end