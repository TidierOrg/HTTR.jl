# handle_the_response.jl
"""
$resp_body_raw_docstring
"""
function resp_body_raw(resp::HTTP.Messages.Response)::Vector{UInt8}
    return copy(resp.body)
end

"""
$resp_has_body_docstring
"""
function resp_has_body(resp::HTTP.Messages.Response)::Bool
    return !isnothing(resp.body)
end

"""
$resp_body_string_docstring
"""
function resp_body_string(resp::HTTP.Messages.Response)::String
    return String(resp.body)
end

"""
$resp_body_json_docstring
"""
function resp_body_json(resp::HTTP.Messages.Response; kwargs...)::Dict
    body_copy::Vector{UInt8} = copy(resp.body)
    body_string::String = String(body_copy)

    return JSON3.read(body_string, Dict; kwargs...)
end

"""
$resp_body_html_docstring
"""
function resp_body_html(resp::HTTP.Messages.Response; kwargs...)
    # if type isnt html, return error
end

"""
$resp_body_xml_docstring
"""
function resp_body_xml(resp::HTTP.Messages.Response; kwargs...)
    # if type isnt xml, return error
end

"""
$resp_check_content_type_docstring
"""
function resp_check_content_type(resp::HTTP.Messages.Response)
    
end

"""
$resp_content_type_docstring
"""
function resp_content_type(resp::HTTP.Messages.Response)
    content_type::Union{Nothing,String} = HTTP.Messages.header(resp, "Content-Type")
    if content_type !== nothing
        return split(content_type, ';')[1] |> strip
    else
        return missing
    end
end

"""
$resp_encoding_docstring
"""
function resp_encoding(resp::HTTP.Messages.Response)

end

"""
$resp_date_docstring
"""
function resp_date(resp::HTTP.Messages.Response)::DateTime
    date_str::String = Base.get(resp.headers, "Date", "")

    if isempty(date_str)
        return now()
    end

    try
        return DateTime(date_str, dateformat"ddd, dd MMM yyyy HH:MM:SS UTC")
    catch
        return error("Failed to parse Date header: $date_str")
    end
end

"""
$resp_headers_docstring
"""
function resp_headers(resp::HTTP.Messages.Response, filter::Union{Regex,Nothing}=nothing)
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
function resp_header(resp::HTTP.Messages.Response, header::AbstractString; default=nothing)
    header_lower::String = lowercase(header)

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
function resp_header_exists(resp::HTTP.Messages.Response, header::AbstractString)::Bool
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
function resp_link_url(resp::HTTP.Messages.Response, rel::AbstractString)

end

"""
$resp_raw_docstring
"""
function resp_raw(resp::HTTP.Messages.Response)::String
    status_line::String = string(resp.status)
    headers::String = join(["$(k): $(v)" for (k, v) in resp.headers], "\n")
    body::String = String(resp.body)
    raw_response::String = "$status_line\n\n$headers\n\n$body"
    println(raw_response)
    
    return raw_response
end

"""
$resp_retry_after_docstring
"""
function resp_retry_after(resp::HTTP.Messages.Response)::Time

end

"""
$resp_status_docstring
"""
function resp_status(resp::HTTP.Messages.Response)::Int
    return resp.status
end

"""
$resp_status_desc_docstring
"""
function resp_status_desc(resp::HTTP.Messages.Response)::String

end

"""
$resp_is_error_docstring
"""
function resp_is_error(resp::HTTP.Messages.Response)::Bool
    status_code = resp.status

    return status_code >= 400 && status_code < 600
end

"""
$resp_check_status_docstring
"""
function resp_check_status(resp::HTTP.Messages.Response)

end

"""
$resp_url_docstring
"""
function resp_url(resp::HTTP.Messages.Response)
    return resp.request.url
end

"""
$resp_url_path_docstring
"""
function resp_url_path(resp::HTTP.Messages.Response)
    url::String = resp_url(resp)
    uri::URI = URI(url)

    return Base.Filesystem.splitpath(uri)
end

"""
$resp_url_query_docstring
"""
function resp_url_query(resp::HTTP.Messages.Response, name::AbstractString; default=nothing)
    url::String = resp_url(resp)
    uri::URI = URI(url)
    query_dict::Dict = queryparams(uri)

    return Base.get(query_dict, name, default)
end

"""
$resp_url_queries_docstring
"""
function resp_url_queries(resp::HTTP.Messages.Response)
    url::String = resp_url(resp)
    uri::URI = URI(url)

    return queryparams(uri)
end