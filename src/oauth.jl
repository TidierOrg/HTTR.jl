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
$OAuthClient_docstring
"""
@kwdef mutable struct OAuthClient
    id::AbstractString
    token_url::AbstractString
    secret::Union{AbstractString,Nothing} = nothing
    key::Union{AbstractString,Nothing} = nothing
    auth::Vector{AbstractString} = ["body", "header", "jwt_sig"]
    auth_params::AbstractDict = Dict()
    name::AbstractString = Base.hash(id)
end

"""
$oauth_client_docstring
"""
function oauth_client(
    id::AbstractString,
    token_url::AbstractString;
    secret::Union{AbstractString,Nothing}=nothing,
    key::Union{AbstractString,Nothing}=nothing,
    auth::Vector{AbstractString}=["body", "header", "jwt_sig"],
    auth_params::AbstractDict=Dict(),
    name::String=Base.hash(id))::OAuthClient

    return OAuthClient(
        id=id,
        token_url=token_url,
        secret=secret,
        key=key,
        auth=auth,
        auth_params=auth_params,
        name=name
    )
end

"""
$oauth_client_req_auth_docstring
"""
function oauth_client_req_auth(req::RequestHTTR, client::OAuthClient)

end

"""
$oauth_client_req_auth_header_docstring
"""
function oauth_client_req_auth_header(req::RequestHTTR, client::OAuthClient)

end

"""
$oauth_client_req_auth_body_docstring
"""
function oauth_client_req_auth_body(req::RequestHTTR, client::OAuthClient)

end

"""
$oauth_client_req_auth_jwt_sig_docstring
"""
function oauth_client_req_auth_jwt_sig(req::RequestHTTR, client::OAuthClient; claim, size::Int=256, header)

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
$OAuthToken_docstring
"""
@kwdef mutable struct OAuthToken
    access_token::AbstractString
    token_type::AbstractString = "bearer"
    expires_in::Union{Nothing,Int} = nothing
    refresh_token::Union{Nothing,AbstractString} = nothing
    date::DateTime = now()
    additional_components::AbstractDict = Dict()
end

"""
$oauth_token_docstring
"""
function oauth_token(
    access_token::AbstractString,
    token_type::AbstractString="bearer",
    expires_in::Union{Nothing,Int}=nothing,
    refresh_token::Union{Nothing,AbstractString}=nothing,
    date::DateTime=now(),
    additional_components::AbstractDict=Dict())::OAuthToken

    if expires_in === nothing
        expires_at = nothing
    else
        expires_at = date + Second(expires_in)
    end

    return OAuthToken(
        access_token=access_token,
        token_type=token_type,
        expires_in=expires_in,
        expires_at=expires_at,
        refresh_token=refresh_token,
        date=date,
        additional_components=additional_components
    )
end