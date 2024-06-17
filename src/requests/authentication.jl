# authentication.jl
"""
$req_auth_basic_docstring
"""
function req_auth_basic(req::HTTR.Request, username::AbstractString; password::AbstractString="")::HTTR.Request
    if password == ""
        println("Enter password: ")
        password::String = readline()
    end

    credentials::String = base64encode("$username:$password")
    authorization_header::String = "Basic $credentials"

    req.headers = merge_headers(req.headers, ["Authorization" => authorization_header])

    return req
end

"""
$req_auth_bearer_token_docstring
"""
function req_auth_bearer_token(req::HTTR.Request, token::AbstractString)::HTTR.Request
    authorization_header::String = "Bearer $token"

    req.headers = merge_headers(req.headers, ["Authorization" => authorization_header])

    return req
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