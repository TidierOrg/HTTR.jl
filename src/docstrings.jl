
const request_docstring::String = 
"""
    request_docstring(base_url::AbstractString)

Create an HTTP request. Without any options, this creates a GET request.

Arguments

- `base_url::AbstractString`: The base URL of the request.

Returns

- `HTTP.Request`: An HTTP request object.

Examples

```jldoctest
julia> request("https://julialang.org/")
GET https://julialang.org/
Body: empty
```
"""

const req_body_raw_docstring::String = 
"""

"""

const req_body_file_docstring::String = 
"""

"""

const req_body_json_docstring::String = 
"""

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

"""

const req_method_docstring::String = 
"""

"""

const req_options_docstring::String = 
"""

"""

const req_progress_docstring::String = 
"""

"""

const req_proxy_docstring::String = 
"""

"""

const req_template_docstring::String = 
"""

"""

const req_timeout_docstring::String = 
"""

"""

const req_url_docstring::String = 
"""

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

"""

const last_request_docstring::String = 
"""

"""

const req_dry_run_docstring::String = 
"""

"""

const req_verbose_docstring::String = 
"""

"""

const with_mocked_responses_docstring::String = 
"""

"""

const local_mocked_responses_docstring::String = 
"""

"""

const with_verbosity_docstring::String = 
"""

"""

const req_auth_basic_docstring::String = 
"""

"""

const req_auth_bearer_token_docstring::String = 
"""

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

"""

const resp_has_body_docstring::String = 
"""

"""

const resp_body_string_docstring::String = 
"""

"""

const resp_body_json_docstring::String = 
"""

"""

const resp_body_html_docstring::String = 
"""

"""

const resp_body_xml_docstring::String = 
"""

"""

const resp_check_content_type_docstring::String = 
"""

"""

const resp_content_type_docstring::String = 
"""

"""

const resp_encoding_docstring::String = 
"""

"""

const resp_date_docstring::String = 
"""

"""

const resp_headers_docstring::String = 
"""

"""

const resp_header_docstring::String = 
"""

"""

const resp_header_exists_docstring::String = 
"""

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

"""

const curl_help_docstring::String = 
"""

"""

const secret_make_key_docstring::String = 
"""

"""

const secret_encrypt_docstring::String = 
"""

"""

const secret_decrypt_docstring::String = 
"""

"""

const secret_write_rds_docstring::String = 
"""

"""

const secret_read_rds_docstring::String = 
"""

"""

const secret_decrypt_file_docstring::String = 
"""

"""

const secret_encrypt_file_docstring::String = 
"""

"""

const secret_has_key_docstring::String = 
"""

"""

const obfuscate_docstring::String = 
"""

"""

const obfuscated_docstring::String = 
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

const oauth_client_struct_docstring::String =
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

const oauth_token_struct_docstring::String = 
"""

"""

const oauth_token_docstring::String = 
"""

"""
