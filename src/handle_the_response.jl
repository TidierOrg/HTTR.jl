# handle_the_response.jl
"""
$resp_body_raw_docstring
"""
function resp_body_raw(resp::HTTP.Messages.Response)::Vector{UInt8}
    return resp.body
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
function resp_body_json(resp::HTTP.Messages.Response; check_type::Bool=true, kwargs...)::Dict
    if check_type
        resp_check_content_type(resp, ["application/json", "text/json"])
    end

    return JSON3.read(resp_body_string(resp), Dict, kwargs...)
end

"""
$resp_body_html_docstring
"""
function resp_body_html(resp::HTTP.Messages.Response; check_type::Bool=true, kwargs...)
    if check_type
        resp_check_content_type(resp, ["text/html"])
    end

    return parsehtml(resp_body_string(resp), kwargs...)
end

"""
$resp_body_xml_docstring
"""
function resp_body_xml(resp::HTTP.Messages.Response; check_type::Bool=true, kwargs...)
    if check_type
        resp_check_content_type(resp, ["application/xml", "text/xml"])
    end

    return parsexml(resp_body_string(resp), kwargs...)
end

"""
$resp_check_content_type_docstring
"""
function resp_check_content_type(resp::HTTP.Messages.Response, valid_types::AbstractVector=[""])
    content_type::Union{Nothing,String} = resp_content_type(resp)

    if content_type === nothing || !(content_type in valid_types)
        error("Invalid content type: $content_type. Expected one of: $valid_types")
    end

    return content_type
end

"""
$resp_content_type_docstring
"""
function resp_content_type(resp::HTTP.Messages.Response)
    content_type::Union{Nothing,String} = HTTP.Messages.header(resp, "Content-Type")
    if content_type !== nothing
        return split(content_type, ';')[1] |> strip
    else
        return nothing
    end
end

"""
$resp_encoding_docstring
"""
function resp_encoding(resp::HTTP.Messages.Response)
    content_type::Union{Nothing,String} = resp_content_type(resp)
    if content_type !== nothing
        charset_match = match(r"charset=([^;]+)", content_type)
        if charset_match !== nothing
            return lowercase(charset_match.captures[1])
        end
    end

    return "utf-8"
end

"""
$resp_date_docstring
"""
function resp_date(resp::HTTP.Messages.Response)
    date::Union{Nothing,String} = HTTP.Messages.header(resp, "Date")
    if date !== nothing
        return date
    else
        return now()
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
    header = HTTP.Messages.header(resp, header)

    if header === nothing
        return default
    else
        return header
    end
end

"""
$resp_header_exists_docstring
"""
function resp_header_exists(resp::HTTP.Messages.Response, header::AbstractString)::Bool
    return !isnothing(HTTP.Messages.header(resp, header))
end

"""
$resp_link_url_docstring
"""
function resp_link_url(resp::HTTP.Messages.Response, rel::AbstractString)
    link_header::Union{Nothing,String} = HTTP.header(resp, "Link")
    if link_header === nothing
        return nothing
    end

    link_segments::Vector = split(link_header, ",")
    for segment in link_segments
        match::Union{Nothing,RegexMatch} = match(r"<(.*)>;\s*rel=\"(.*)\"", segment)
        if match !== nothing
            url, link_rel = match.captures
            if link_rel == rel
                return url
            end
        end
    end

    return nothing
end

"""
$resp_raw_docstring
"""
function resp_raw(resp::HTTP.Messages.Response)::String
    status_line::String = "HTTP/1.1 $(resp.status) $(HTTP.Messages.statustext(resp.status))"
    headers::String = join(["$k: $v" for (k, v) in resp.headers], "\r\n")
    body::String = String(resp.body)

    return join([status_line, headers, "", body], "\r\n")
end

"""
$resp_retry_after_docstring
"""
function resp_retry_after(resp::HTTP.Messages.Response)
    retry_after::Union{Nothing,String} = HTTP.Messages.header(resp, "Retry-After")
    if retry_after !== nothing
        return retry_after
    else
        return nothing
    end
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
    return HTTP.Messages.statustext(resp.status)
end

"""
$resp_is_error_docstring
"""
function resp_is_error(resp::HTTP.Messages.Response)::Bool
    status_code::Int = resp.status

    return status_code >= 400 && status_code < 600
end

"""
$resp_check_status_docstring
"""
function resp_check_status(resp::HTTP.Messages.Response)
    if resp_is_error(resp)
        error(resp_status_desc(resp))
    else
        println(resp_status_desc(resp))
    end

    return resp
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