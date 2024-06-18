"""
    HTTR

Julia port of [httr2](https://github.com/r-lib/httr2) 
"""
module HTTR

using Chain, Base64, Dates, EzXML, HTTP, JLD2, JSON3, libsodium_jll, ProgressMeter, Random, URIs

include("docstrings.jl")

include("requests/create_and_modify.jl")
export
    Request,
    request,
    req_body_raw,
    req_body_file,
    req_body_json,
    #req_body_json_modify,
    #req_body_form,
    #req_body_multipart,
    #req_cookie_preserve,
    req_headers,
    req_method,
    #req_options,
    req_progress,
    #req_proxy,
    #req_template,
    req_timeout,
    req_url,
    #req_url_query,
    #req_url_path,
    #req_url_path_append,
    req_user_agent

include("requests/debugging_and_testing.jl")
export
    last_response
    last_request,
    #req_dry_run,
    req_verbose,
    #with_mocked_responses,
    #local_mocked_responses,
    with_verbosity

include("requests/authentication.jl")
export
    req_auth_basic,
    req_auth_bearer_token
    #req_oauth_auth_code,
    #oauth_flow_auth_code,
    #req_oauth_bearer_jwt,
    #oauth_flow_bearer_jwt,
    #req_oauth_client_credentials,
    #oauth_flow_client_credentials,
    #req_oauth_device,
    #oauth_flow_device,
    #req_oauth_password,
    #oauth_flow_password,
    #req_oauth_refresh,
    #oauth_flow_refresh

include("perform_a_request.jl")
export
    req_perform,
    #req_perform_stream,
    #req_cache,
    #req_error,
    #req_throttle,
    req_retry

#include("perform_multiple_requests.jl")
#export
    #req_perform_iterative,
    #req_perform_parallel
    #req_perform_sequential,
    #iterate_with_offset,
    #iterate_with_cursor,
    #iterate_with_link_url,
    #resps_successes,
    #resps_failures,
    #resps_requests,
    #resps_data

include("handle_the_response.jl")
export
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
    resp_url_queries

include("miscellaenous_helpers.jl")
export
    #curl_translate,
    curl_help,
    secret_make_key,
    secret_encrypt,
    secret_decrypt,
    secret_write_jld,
    secret_read_jld,
    #secret_decrypt_file,
    #secret_encrypt_file,
    secret_has_key,
    #obfuscate,
    #Obfuscated,
    #obfuscated,
    url_parse,
    url_build

include("oauth.jl")
export
    oauth_cache_path,
    OAuthClient,
    oauth_client,
    #oauth_client_req_auth,
    #oauth_client_req_auth_header,
    #oauth_client_req_auth_body,
    #oauth_client_req_auth_jwt_sig,
    oauth_redirect_uri,
    OAuthToken,
    oauth_token

end