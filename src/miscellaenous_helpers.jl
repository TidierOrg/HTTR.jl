# miscellaenous_helpers.jl
"""
$curl_translate_docstring
"""
function curl_translate(cmd::Union{AbstractString,Cmd}; simplify_headers::Bool=true)

end

const CURL_OPTIONS::String = """
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
function curl_help()::Nothing
    return println(CURL_OPTIONS)
end

"""
$secret_make_key_docstring
"""
function secret_make_key()::String
    return randstring(16)
end

"""
$secret_encrypt_docstring
"""
function secret_encrypt(x::AbstractString, key::AbstractString)::String
    plaintext::Vector{UInt8} = string_to_bytes(x)
    key_bytes::Vector{UInt8} = string_to_bytes(key)
    encrypted::Vector{UInt8} = encrypt_secretbox(plaintext, key_bytes)
    return bytes_to_string(Base64.base64encode(encrypted))
end

"""
$secret_decrypt_docstring
"""
function secret_decrypt(encrypted::AbstractString, key::AbstractString)::String
    encrypted_bytes::Vector{UInt8} = Base64.base64decode(string_to_bytes(encrypted))
    decrypted_bytes::Vector{UInt8} = decrypt_secretbox(encrypted_bytes, string_to_bytes(key))
    return bytes_to_string(decrypted_bytes)
end

"""
$secret_write_jld_docstring
"""
function secret_write_jld(x::AbstractString, path::AbstractString, key::AbstractString)::String
    ext::String = splitext(path)[2]
    if ext != ".jld2"
        error("File extension must be .jld2")
    end

    encrypted_data::String = secret_encrypt(x, key)
    JLD2.save_object(path, encrypted_data)

    return path
end

"""
$secret_read_jld_docstring
"""
function secret_read_jld(path::AbstractString, key::AbstractString)::String
    ext::String = splitext(path)[2]
    if ext != ".jld2"
        error("File extension must be .jld2")
    end

    encrypted_data::String = JLD2.load_object(path)

    return secret_decrypt(encrypted_data, key)
end

"""
$secret_decrypt_file_docstring
"""
function secret_decrypt_file(path::AbstractString, key::AbstractString, envir)

end

"""
$secret_encrypt_file_docstring
"""
function secret_encrypt_file(path::AbstractString, key::AbstractString)

end

"""
$secret_has_key_docstring
"""
function secret_has_key(key::AbstractString)::Bool
    return !isempty(ENV[key])
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
    uri::URI = URI(url)
    return Dict(
        "scheme" => uri.scheme,
        "username:password" => uri.userinfo,
        "host" => uri.host,
        "port" => uri.port,
        "path" => uri.path,
        "fragment" => uri.fragment,
        "query" => queryparams(uri)
    )
end

"""
$url_build_docstring
"""
function url_build(url::AbstractDict)::String
    scheme::String = url["scheme"]
    userinfo::String = url["username:password"]
    host::String = url["host"]
    port::Int = url["port"]
    path::String = url["path"]
    fragment::String = url["fragment"]
    query::String = url["query"]

    return URI(
        scheme=scheme, 
        userinfo=userinfo, 
        host=host, 
        port=port, 
        path=path, 
        fragment=fragment, 
        query=queryparampairs(query)) |> string
end