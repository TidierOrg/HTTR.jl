# miscellaenous_helpers.jl
"""
$curl_translate_docstring
"""
function curl_translate(cmd::String, simplify_headers::Bool=true)

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
    return Dict(
        "scheme" => uri.scheme,
        "hostname" => uri.host,
        "port" => uri.port,
        "path" => uri.path,
        "fragment" => uri.fragment,
        "query" => URIs.queryparams(uri),
        "username" => uri.user,
        "password" => uri.pass
    )
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

    return Base.string(URIs.URI(
        scheme, 
        username, 
        password, 
        hostname, 
        port, 
        path, 
        URIs.queryparampairs(query), 
        fragment
    ))
end