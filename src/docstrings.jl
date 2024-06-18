const Request_docstring::String =
"""
    HTTR.Request

Request object for HTTR functions.

## Fields
- `base_url::AbstractString`: The base URL of the request.
- `method::AbstractString`: The HTTP method of the request.
- `body::Any`: The body of the request.
- `headers::AbstractVector`: The headers of the request.
- `verbosity::Int`: The verbosity of the request.
- `retries::Int`: The number of retries of the request.
- `retry::Bool`: Whether to retry the request.
- `timeout::Int`: The timeout of the request.
- `progress::Bool`: Whether to show the progress of the request.

"""

const request_docstring::String = 
"""
    HTTR.request(base_url::AbstractString)::HTTR.Request

Create a new request object.

## Arguments
- `base_url::AbstractString`: The base URL of the request.

## Returns
- `HTTR.Request`: A new request object.

"""

const req_body_raw_docstring::String = 
"""
    HTTR.req_body_raw(req::HTTR.Request, data::Union{AbstractString,AbstractVector}; type::AbstractString="")::HTTR.Request

Adds a raw body to the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `data::Union{AbstractString,AbstractVector}`: The data to be sent in the request body.
- `type::AbstractString="": The content type of the request body.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_body_file_docstring::String = 
"""
    HTTR.req_body_file(req::HTTR.Request, path::AbstractString; type::AbstractString="")::HTTR.Request

Adds a file body to the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `path::AbstractString`: The path to the file to be sent in the request body.
- `type::AbstractString="": The content type of the request body.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_body_json_docstring::String = 
"""
    HTTR.req_body_json(req::HTTR.Request, data::Union{AbstractString,AbstractDict}; type::AbstractString="", kwargs...)::HTTR.Request

Adds a JSON body to the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `data::Union{AbstractString,AbstractDict}`: The data to be sent in the request body.
- `type::AbstractString="": The content type of the request body.
- `kwargs`: Additional keyword arguments to pass to the `JSON3.write` function.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_body_json_modify_docstring::String = 
"""

"""

const req_body_form_docstring::String = 
"""

"""

const req_body_multipart_docstring::String = 
"""

"""

const req_cookie_preserve_docstring::String = 
"""

"""

const req_headers_docstring::String = 
"""
    HTTR.req_headers(req::HTTR.Request, headers::AbstractVector; redact::Bool=false)::HTTR.Request

Updates headers of the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `headers::AbstractVector`: The headers to be sent in the request.
- `redact::Bool=false`: Whether to redact the headers.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_method_docstring::String = 
"""
    HTTR.req_method(req::HTTR.Request, method::AbstractString)::HTTR.Request

Updates the method of the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `method::AbstractString`: The method to be sent in the request.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_options_docstring::String = 
"""

"""

const req_progress_docstring::String = 
"""
    HTTR.req_progress(req::HTTR.Request)::HTTR.Request

Adds a progress bar to the request.

## Arguments
- `req::HTTR.Request`: The request object.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_proxy_docstring::String = 
"""

"""

const req_template_docstring::String = 
"""

"""

const req_timeout_docstring::String = 
"""
    HTTR.req_timeout(req::HTTR.Request, seconds::Int)::HTTR.Request

Updates the timeout of the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `seconds::Int`: The timeout in seconds.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_url_docstring::String = 
"""
    HTTR.req_url(req::HTTR.Request, url::AbstractString)::HTTR.Request

Updates the URL of the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `url::AbstractString`: The URL to be sent in the request.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_url_query_docstring::String = 
"""

"""

const req_url_path_docstring::String = 
"""

"""

const req_url_path_append_docstring::String = 
"""

"""

const req_user_agent_docstring::String = 
"""

"""

const last_response_docstring::String = 
"""
    HTTR.last_response()::Union{Nothing,HTTP.Messages.Response}

Returns the last response object.

## Returns
- `Union{Nothing,HTTP.Messages.Response}`: The last response object.

"""

const last_request_docstring::String = 
"""
    HTTR.last_request()::Union{Nothing,HTTR.Request}

Returns the last request object.

## Returns
- `Union{Nothing,HTTR.Request}`: The last request object.

"""

const req_dry_run_docstring::String = 
"""

"""

const req_verbose_docstring::String = 
"""
    HTTR.req_verbose(req::HTTR.Request, verbosity::Int)::HTTR.Request

Updates the verbosity of the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `verbosity::Int`: The verbosity level.

## Returns
- `HTTR.Request`: The modified request.

"""

const with_mocked_responses_docstring::String = 
"""

"""

const local_mocked_responses_docstring::String = 
"""

"""

const with_verbosity_docstring::String = 
"""
    HTTR.with_verbosity(req::HTTR.Request)::HTTR.Request

Adds a verbosity level of 2 to the request.

## Arguments
- `req::HTTR.Request`: The request object.

## Returns
- `HTTR.Request`: The modified request.
"""

const req_auth_basic_docstring::String = 
"""
    HTTR.req_auth_basic(req::HTTR.Request, username::AbstractString; password::AbstractString="")::HTTR.Request

Updates the basic authentication of the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `username::AbstractString`: The username to be sent in the request.
- `password::AbstractString=""`: The password to be sent in the request.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_auth_bearer_token_docstring::String = 
"""
    HTTR.req_auth_bearer_token(req::HTTR.Request, token::AbstractString)::HTTR.Request

Updates the bearer token authentication of the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `token::AbstractString`: The bearer token to be sent in the request.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_oauth_auth_code_docstring::String = 
"""

"""

const oauth_flow_auth_code_docstring::String = 
"""

"""

const req_oauth_bearer_jwt_docstring::String = 
"""

"""

const oauth_flow_bearer_jwt_docstring::String = 
"""

"""

const req_oauth_client_credentials_docstring::String = 
"""

"""

const oauth_flow_client_credentials_docstring::String = 
"""

"""

const req_oauth_device_docstring::String = 
"""

"""

const oauth_flow_device_docstring::String = 
"""

"""

const req_oauth_password_docstring::String = 
"""

"""

const oauth_flow_password_docstring::String = 
"""

"""

const req_oauth_refresh_docstring::String = 
"""

"""

const oauth_flow_refresh_docstring::String = 
"""

"""

const req_perform_docstring::String = 
"""
    HTTR.req_perform(req::HTTR.Request)::HTTP.Messages.Response

Performs the request.

## Arguments
- `req::HTTR.Request`: The request object.

## Returns
- `HTTP.Messages.Response`: The response object.

"""

const req_perform_stream_docstring::String = 
"""

"""

const req_cache_docstring::String = 
"""

"""

const req_error_docstring::String = 
"""

"""

const req_throttle_docstring::String = 
"""

"""

const req_retry_docstring::String = 
"""
    HTTR.req_retry(req::HTTR.Request, max_retries::Int)::HTTR.Request

Updates the maximum number of retries of the request.

## Arguments
- `req::HTTR.Request`: The request object.
- `max_retries::Int`: The maximum number of retries.

## Returns
- `HTTR.Request`: The modified request.

"""

const req_perform_iterative_docstring::String = 
"""

"""

const req_perform_parallel_docstring::String = 
"""

"""

const req_perform_sequential_docstring::String = 
"""

"""

const iterate_with_offset_docstring::String = 
"""

"""

const iterate_with_cursor_docstring::String = 
"""

"""

const iterate_with_link_url_docstring::String = 
"""

"""

const resps_successes_docstring::String = 
"""

"""

const resps_failures_docstring::String = 
"""

"""

const resps_requests_docstring::String = 
"""

"""

const resps_data_docstring::String = 
"""

"""

const resp_body_raw_docstring::String = 
"""
    HTTR.resp_body_raw(resp::HTTP.Messages.Response)::Vector{UInt8}

Returns the raw body of the response.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.

## Returns
- `Vector{UInt8}`: The raw body of the response.

"""

const resp_has_body_docstring::String = 
"""
    HTTR.resp_has_body(resp::HTTP.Messages.Response)::Bool

Returns whether the response has a body.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.

## Returns
- `Bool`: Whether the response has a body.

"""

const resp_body_string_docstring::String = 
"""
    HTTR.resp_body_string(resp::HTTP.Messages.Response)::String

Returns the body of the response as a string.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.

## Returns
- `String`: The body of the response as a string.

"""

const resp_body_json_docstring::String = 
"""
    HTTR.resp_body_json(resp::HTTP.Messages.Response; check_type::Bool=true, kwargs...)::Dict

Returns the body of the response as a JSON object.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.
- `check_type::Bool=true`: Whether to check the content type of the response.
- `kwargs`: Additional keyword arguments to pass to `JSON.read`.

## Returns
- `Dict`: The body of the response as a JSON object.

"""

const resp_body_html_docstring::String = 
"""
    HTTR.resp_body_html(resp::HTTP.Messages.Response; check_type::Bool=true, kwargs...)

Returns the body of the response as an HTML string.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.
- `check_type::Bool=true`: Whether to check the content type of the response.
- `kwargs`: Additional keyword arguments to pass to `EzXML.parsehtml`.

## Returns
- `HTMLDocument`: The body of the response as an HTML document.

"""

const resp_body_xml_docstring::String = 
"""
    HTTR.resp_body_xml(resp::HTTP.Messages.Response; check_type::Bool=true, kwargs...)

Returns the body of the response as an XML string.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.
- `check_type::Bool=true`: Whether to check the content type of the response.
- `kwargs`: Additional keyword arguments to pass to `EzXML.parsexml`.

## Returns
- `XMLDocument`: The body of the response as an XML document.

"""

const resp_check_content_type_docstring::String = 
"""
    HTTR.resp_check_content_type(resp::HTTP.Messages.Response, content_type::AbstractString)

Checks the content type of the response.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.
- `content_type::AbstractString`: The expected content type.

"""

const resp_content_type_docstring::String = 
"""
    HTTR.resp_content_type(resp::HTTP.Messages.Response)

Returns the content type of the response.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.

## Returns
- `Union{Nothing,String}`: The content type of the response.

"""

const resp_encoding_docstring::String = 
"""
    HTTR.resp_encoding(resp::HTTP.Messages.Response)

Returns the encoding of the response.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.

## Returns
- `String`: The encoding of the response.

"""

const resp_date_docstring::String = 
"""
    HTTR.resp_date(resp::HTTP.Messages.Response)

Returns the date of the response.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.

## Returns
- `Union{String,DateTime}`: The date of the response. If the date is not available, returns the current time.

"""

const resp_headers_docstring::String = 
"""

"""

const resp_header_docstring::String = 
"""
    HTTR.resp_header(resp::HTTP.Messages.Response, header::AbstractString)

Returns the header of the response.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.
- `header::AbstractString`: The name of the header.

## Returns
- `Union{Nothing,String}`: The value of the header. If the header is not available, returns `nothing`.

"""

const resp_header_exists_docstring::String = 
"""
    HTTR.resp_header_exists(resp::HTTP.Messages.Response, header::AbstractString)

Checks if the header exists in the response.

## Arguments
- `resp::HTTP.Messages.Response`: The response object.
- `header::AbstractString`: The name of the header.

## Returns
- `Bool`: Whether the header exists in the response.

"""

const resp_link_url_docstring::String = 
"""

"""

const resp_raw_docstring::String = 
"""

"""

const resp_retry_after_docstring::String = 
"""

"""

const resp_status_docstring::String = 
"""

"""

const resp_status_desc_docstring::String = 
"""

"""

const resp_is_error_docstring::String = 
"""

"""

const resp_check_status_docstring::String = 
"""

"""

const resp_url_docstring::String = 
"""

"""

const resp_url_path_docstring::String = 
"""

"""

const resp_url_query_docstring::String = 
"""

"""

const resp_url_queries_docstring::String = 
"""

"""

const curl_translate_docstring::String = 
"""
    HTTR.curl_translate(cmd, simplify_headers::Bool=true)

Translate curl commands into HTTR functions.
"""

const curl_help_docstring::String = 
"""
    HTTR.curl_help()::String

This function prints out useful information about the curl command line tool.
"""

const secret_make_key_docstring::String = 
"""
    HTTR.secret_make_key()::String

Generate a new secret key that is 16 characters long.
"""

const secret_encrypt_docstring::String = 
"""
    HTTR.secret_encrypt(x::AbstractString, key::AbstractString)::String
"""

const secret_decrypt_docstring::String = 
"""
    HTTR.secret_decrypt(encrypted::AbstractString, key::AbstractString)::String
"""

const secret_write_jld_docstring::String = 
"""
    HTTR.secret_write_jld(x::AbstractString, path::AbstractString, key::AbstractString)::String

Write a secret to a JLD file. `secret_read_jld` is equivalent to `secret_read_rds` in R.

## Arguments
- `x::AbstractString`: The secret to write.
- `path::AbstractString`: The path of the JLD file.
- `key::AbstractString`: The secret key.

## Returns
- `String`: The path of the JLD file.

"""

const secret_read_jld_docstring::String = 
"""
    HTTR.secret_read_jld(path::AbstractString, key::AbstractString)::String

Read a secret from a JLD file. `secret_write_jld` is equivalent to `secret_write_rds` in R.

## Arguments
- `path::AbstractString`: The path of the JLD file.
- `key::AbstractString`: The secret key.

## Returns
- `String`: The secret.

"""

const secret_decrypt_file_docstring::String = 
"""

"""

const secret_encrypt_file_docstring::String = 
"""

"""

const secret_has_key_docstring::String = 
"""
    HTTR.secret_has_key(key::AbstractString)::Bool

Check if a secret key exists in the environment.

## Arguments
- `key::AbstractString`: The secret key.

## Returns
- `Bool`: Whether the secret key exists in the environment.

"""

const obfuscate_docstring::String = 
"""

"""

const Obfuscated_docstring::String =
"""

"""

const obfuscated_docstring::String = 
"""

"""

const unobfuscate_docstring::String =
"""

"""

const url_parse_docstring::String = 
"""

"""

const url_build_docstring::String = 
"""

"""

const oauth_cache_path_docstring::String = 
"""

"""

const OAuthClient_docstring::String =
"""

"""

const oauth_client_docstring::String = 
"""

"""

const oauth_client_req_auth_docstring::String = 
"""

"""

const oauth_client_req_auth_header_docstring::String = 
"""

"""

const oauth_client_req_auth_body_docstring::String = 
"""

"""

const oauth_client_req_auth_jwt_sig_docstring::String = 
"""

"""

const oauth_redirect_uri_docstring::String = 
"""

"""

const OAuthToken_docstring::String =
"""

"""

const oauth_token_docstring::String = 
"""

"""
