# oauth.jl
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