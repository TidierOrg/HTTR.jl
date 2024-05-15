module HTTR # Julia port of httr2 https://github.com/r-lib/httr2

using Chain
using Dates
using HTTP
using JSON3
using MacroTools
using Random
using Reexport
using URIs

@reexport using Chain

export
    # request
    request,
    req_body_raw,
    req_body_file,
    req_body_json,
    req_body_json_modify,
    req_body_form,
    req_body_multipart,
    req_cookie_preserve,
    req_headers,
    req_method,
    req_options,
    req_progress,
    req_proxy,
    req_template,
    req_timeout,
    req_url,
    req_url_query,
    req_url_path,
    req_url_path_append,
    req_user_agent,
    last_response,
    last_request,
    req_dry_run,
    req_verbose,
    with_mocked_responses,
    local_mocked_responses,
    with_verbosity,
    req_auth_basic,
    req_auth_bearer_token,
    req_oauth_auth_code,
    oauth_flow_auth_code,
    req_oauth_bearer_jwt,
    oauth_flow_bearer_jwt,
    req_oauth_client_credentials,
    oauth_flow_client_credentials,
    req_oauth_device,
    oauth_flow_device,
    req_oauth_password,
    oauth_flow_password,
    req_oauth_refresh,
    oauth_flow_refresh,

    # perform a request
    req_perform,
    req_perform_stream,
    req_cache,
    req_error,
    req_throttle,
    req_retry,

    # perform multiple requests
    req_perform_iterative,
    req_perform_parallel,
    req_perform_sequential,
    iterate_with_offset,
    iterate_with_cursor,
    iterate_with_link_url,
    resps_successes,
    resps_failures,
    resps_requests,
    resps_data,

    # responses
    resp_body_raw,
    resp_has_body,
    resp_body_string,
    resp_body_json,
    resp_body_html,
    resp_body_xml,
    resp_check_content_type,
    resp_content_type,
    resp_encoding,
    resp_date,
    resp_headers,
    resp_header,
    resp_header_exists,
    resp_link_url,
    resp_raw,
    resp_retry_after,
    resp_status,
    resp_status_desc,
    resp_is_error,
    resp_check_status,
    resp_url,
    resp_url_path,
    resp_url_query,
    resp_url_queries,

    # miscellaenous helpers
    curl_translate,
    curl_help,
    secret_make_key,
    secret_encrypt,
    secret_decrypt,
    secret_write_rds,
    secret_read_rds,
    secret_decrypt_file,
    secret_encrypt_file,
    secret_has_key,
    obfuscate,
    obfuscated,
    url_parse,
    url_build,

    # oauth
    oauth_cache_path,
    oauth_client,
    oauth_client_req_auth,
    oauth_client_req_auth_header,
    oauth_client_req_auth_body,
    oauth_client_req_auth_jwt_sig,
    oauth_redirect_uri,
    oauth_token

include("docstrings.jl")

# request
"""
$request_docstring
"""
function request(base_url::AbstractString)

end

"""
$req_body_raw_docstring
"""
function req_body_raw()

end

"""
$req_body_file_docstring
"""
function req_body_file()

end

"""
$req_body_json_docstring
"""
function req_body_json()

end

"""
$req_body_json_modify_docstring
"""
function req_body_json_modify()

end

"""
$req_body_form_docstring
"""
function req_body_form()

end

"""
$req_body_multipart_docstring
"""
function req_body_multipart()

end

"""
$req_cookie_preserve_docstring
"""
function req_cookie_preserve(req::HTTP.Request, path::AbstractString)

end

"""
$req_headers_docstring
"""
function req_headers()

end

"""
$req_method_docstring
"""
function req_method(req, method::AbstractString)
    method = Base.uppercase(method)
end

"""
$req_options_docstring
"""
function req_options()

end

"""
$req_progress_docstring
"""
function req_progress()

end

"""
$req_proxy_docstring
"""
function req_proxy(
    req,
    url::String,
    port::Int,
    username::String,
    password::String,
    auth::String="basic"
)

end

"""
$req_template_docstring
"""
function req_template()

end

"""
$req_timeout_docstring
"""
function req_timeout(req::HTTP.Request, seconds::Int)

end

"""
$req_url_docstring
"""
function req_url(req::HTTP.Request, url::String)

end

"""
$req_url_query_docstring
"""
function req_url_query()

end

"""
$req_url_path_docstring
"""
function req_url_path()

end

"""
$req_url_path_append_docstring
"""
function req_url_path_append()

end

"""
$req_user_agent_docstring
"""
function req_user_agent()

end

"""
$last_response_docstring
"""
function last_response()

end

"""
$last_request_docstring
"""
function last_request()

end

"""
$req_dry_run_docstring
"""
function req_dry_run(req; quiet::Bool=false, redact_headers::Bool=true)

end

"""
$req_verbose_docstring
"""
function req_verbose()

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
function with_verbosity()

end

"""
$req_auth_basic_docstring
"""
function req_auth_basic()

end

"""
$req_auth_bearer_token_docstring
"""
function req_auth_bearer_token()

end

"""
$req_oauth_auth_code_docstring
"""
function req_oauth_auth_code()

end

"""
$oauth_flow_auth_code_docstring
"""
function oauth_flow_auth_code()

end

"""
$req_oauth_bearer_jwt_docstring
"""
function req_oauth_bearer_jwt()

end

"""
$oauth_flow_bearer_jwt_docstring
"""
function oauth_flow_bearer_jwt()

end

"""
$req_oauth_client_credentials_docstring
"""
function req_oauth_client_credentials()

end

"""
$oauth_flow_client_credentials_docstring
"""
function oauth_flow_client_credentials()

end

"""
$req_oauth_device_docstring
"""
function req_oauth_device()

end

"""
$oauth_flow_device_docstring
"""
function oauth_flow_device()

end

"""
$req_oauth_password_docstring
"""
function req_oauth_password()

end

"""
$oauth_flow_password_docstring
"""
function oauth_flow_password()

end

"""
$req_oauth_refresh_docstring
"""
function req_oauth_refresh()

end

"""
$oauth_flow_refresh_docstring
"""
function oauth_flow_refresh()

end

# perform a request
"""
$req_perform_docstring
"""
function req_perform()

end

"""
$req_perform_stream_docstring
"""
function req_perform_stream()

end

"""
$req_cache_docstring
"""
function req_cache()

end

"""
$req_error_docstring
"""
function req_error()

end

"""
$req_throttle_docstring
"""
function req_throttle()

end

"""
$req_retry_docstring
"""
function req_retry()

end

# perform multiple requests
"""
$req_perform_iterative_docstring
"""
function req_perform_iterative()

end

"""
$req_perform_parallel_docstring
"""
function req_perform_parallel()

end

"""
$req_perform_sequential_docstring
"""
function req_perform_sequential()

end

"""
$iterate_with_offset_docstring
"""
function iterate_with_offset(
    param_name::AbstractString, 
    start::Int=1, 
    offset::Int=1, 
    resp_pages::Function=nothing, 
    resp_complete::Function=nothing
)

end

"""
$iterate_with_cursor_docstring
"""
function iterate_with_cursor(param_name::AbstractString, resp_param_value::Function)

end

"""
$iterate_with_link_url_docstring
"""
function iterate_with_link_url(rel::AbstractString)

end

"""
$resps_successes_docstring
"""
function resps_successes()

end

"""
$resps_failures_docstring
"""
function resps_failures()

end

"""
$resps_requests_docstring
"""
function resps_requests()

end

"""
$resps_data_docstring
"""
function resps_data()

end

# handle the response
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
    header_lower = lowercase(header)

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

# miscellaenous helpers
"""
$curl_translate_docstring
"""
function curl_translate(cmd, simplify_headers::Bool=true)

end

const CURL_OPTIONS::String = 
"""
Usage: curl [<url>] [-H <header> ...] [options] [<url>]
      --basic                  (IGNORED)
      --compressed             (IGNORED)
      --digest                 (IGNORED)
  -d, --data <data>            HTTP POST data
      --data-raw <data>        HTTP POST data, '@' allowed
      --data-ascii <data>      HTTP POST ASCII data
      --data-binary <data>     HTTP POST binary data
      --data-urlencode <data>  HTTP POST data url encoded
  -G, --get                    Put the post data in the URL and use GET
  -I, --head                   Show document info only
  -H, --header <header>        Pass custom header(s) to server
  -i, --include                (IGNORED)
  -k, --insecure               (IGNORED)
  -L, --location               (IGNORED)
  -m, --max-time <seconds>     Maximum time allowed for the transfer
  -u, --user <user:password>   Server user and password
  -A, --user-agent <name>      Send User-Agent STRING to server
  -#, --progress-bar           Display transfer progress as a progress bar
  -e, --referer <referer>      Referer URL
  -X, --request <command>      Specify request command to use
      --url <url>              URL to work with
  -v, --verbose 
"""

"""
$curl_help_docstring
"""
curl_help()::String = println(CURL_OPTIONS)

"""
$secret_make_key_docstring
"""
secret_make_key()::String = Random.randstring(16)

"""
$secret_encrypt_docstring
"""
function secret_encrypt(encrypted::AbstractString, x::AbstractString)

end

"""
$secret_decrypt_docstring
"""
function secret_decrypt(x::AbstractString)

end

"""
$secret_write_rds_docstring
"""
function secret_write_rds(x::AbstractString)

end

"""
$secret_read_rds_docstring
"""
function secret_read_rds(x::AbstractString)

end

"""
$secret_decrypt_file_docstring
"""
function secret_decrypt_file(x::AbstractString)

end

"""
$secret_encrypt_file_docstring
"""
function secret_encrypt_file(x::AbstractString)

end

"""
$secret_has_key_docstring
"""
function secret_has_key(x::AbstractString)

end

"""
$obfuscate_docstring
"""
function obfuscate(x::AbstractString)

end

"""
$obfuscated_docstring
"""
function obfuscated(x::AbstractString)

end

"""
$url_parse_docstring
"""
function url_parse(url::AbstractString)::Dict
    uri::URI = URIs.URI(url)
    parsed_url::Dict = Dict(
        "scheme" => uri.scheme,
        "hostname" => uri.host,
        "port" => uri.port,
        "path" => uri.path,
        "fragment" => uri.fragment,
        "query" => URIs.queryparams(uri),
        "username" => uri.user,
        "password" => uri.pass
    )
    return parsed_url
end

"""
$url_build_docstring
"""
function url_build(url::Dict)::String
    scheme = url["scheme"]
    hostname = url["hostname"]
    port = url["port"]
    path = url["path"]
    fragment = url["fragment"]
    query = url["query"]
    username = url["username"]
    password = url["password"]

    uri::URI = URIs.URI(scheme, username, password, hostname, port, path, URIs.queryparampairs(query), fragment)
    return Base.string(uri)
end

# oauth
"""
$oauth_cache_path_docstring
"""
function oauth_cache_path()
    cache_path = Base.get(ENV, "HTTR2_OAUTH_CACHE", nothing)

    if cache_path === nothing
        return Base.Sys.BINDIR
    else
        return cache_path
    end
end

"""
$oauth_client_struct_docstring
"""
struct OAuthClient
    id::String
    token_url::String
    secret::Union{String,Nothing}
    key::Union{String,Nothing}
    auth::String
    auth_params::Dict{String,Any}
    name::String
end

"""
$oauth_client_docstring
"""
function oauth_client(
    id::String,
    token_url::String;
    secret::Union{String,Nothing}=nothing,
    key::Union{String,Nothing}=nothing,
    auth::String="body",
    auth_params::Dict{String,Any}=Dict(),
    name::String=Base.hash(id)
)
    return OAuthClient(id, token_url, secret, key, auth, auth_params, name)
end

"""
$oauth_client_req_auth_docstring
"""
function oauth_client_req_auth(req, client)

end

"""
$oauth_client_req_auth_header_docstring
"""
function oauth_client_req_auth_header(req, client)

end

"""
$oauth_client_req_auth_body_docstring
"""
function oauth_client_req_auth_body(req, client)

end

"""
$oauth_client_req_auth_jwt_sig_docstring
"""
function oauth_client_req_auth_jwt_sig(req, client; claim, size::Int=256, header)

end

"""
$oauth_redirect_uri_docstring
"""
function oauth_redirect_uri()
    redirect_url = Base.get(ENV, "HTTR2_OAUTH_REDIRECT_URL", nothing)

    if redirect_url === nothing
        return "http://localhost"
    else
        return redirect_url
    end
end

"""
$oauth_token_struct_docstring
"""
struct OAuthToken
    access_token::String
    token_type::String
    expires_in::Union{Nothing,Int}
    expires_at::Union{Nothing,DateTime}
    refresh_token::Union{Nothing,String}
    additional_components::Dict{String,Any}
    date::DateTime
end

"""
$oauth_token_docstring
"""
function oauth_token(
    access_token::String;
    token_type::String="bearer",
    expires_in::Union{Nothing,Int}=nothing,
    refresh_token::Union{Nothing,String}=nothing,
    additional_components::Dict{String,Any}=Dict(),
    date::DateTime=Dates.now()
)
    if expires_in === nothing
        expires_at = nothing
    else
        expires_at::DateTime = date + Dates.Second(expires_in)
    end

    return OAuthToken(
        access_token,
        token_type,
        expires_in,
        expires_at,
        refresh_token,
        additional_components,
        date
    )
end

end