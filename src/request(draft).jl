# request.jl
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