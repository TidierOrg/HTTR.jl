# HTTR.jl

<a href="https://github.com/TidierOrg/HTTR.jl/actions/workflows/CI.yml?query=branch%3Amain"><img alt="Build Status" src="https://github.com/TidierOrg/HTTR.jl/actions/workflows/CI.yml/badge.svg?branch=main"></a> <a href="https://tidierorg.github.io/HTTR.jl/dev"><img src="https://img.shields.io/badge/Docs-Latest-blue.svg" alt="Documentation Stable" /></a>

## What is HTTR.jl

`HTTR.jl` is a 100% Julia implementation of the R [httr2](https://github.com/r-lib/httr2) package.

The main purpose of `HTTR.jl` is to bridge the gap between the web and data analysis in Julia, offering a flexible and efficient interface for making HTTP requests while adhering to web standards. It leverages packages like [`EzXML.jl`](https://github.com/JuliaIO/EzXML.jl), [`HTTP.jl`](https://github.com/JuliaWeb/HTTP.jl), [`JLD2.jl`](https://github.com/JuliaIO/JLD2.jl), [`JSON3.jl`](https://github.com/quinnj/JSON3.jl), and [`URIs.jl`](https://github.com/JuliaWeb/URIs.jl) to create and handle requests and manage various types of web data.

## Installation

For the development version:

```julia
using Pkg

Pkg.add(url = "https://github.com/TidierOrg/HTTR.jl.git")
```

## What functions does HTTR.jl support?

HTTR.jl currently supports:

| **Category**                       | **Function**                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Create and Modify Requests**     | `request()`, `req_body_raw()`, `req_body_file()`, `req_body_json()`, `req_headers()`,`req_method()`, `req_progress()`,`req_timeout()`, `req_url()`, `req_user_agent()`                                                                                                                                                                                                                                                                                                                  |
| **Debugging and Testing Requests** | `last_response()`, `last_request()`, `req_verbose()`, `with_verbosity()`                                                                                                                                                                                                                                                                                                                                                                                                                |
| **Requests Authentication**        | `req_auth_basic()`, `req_auth_bearer_token()`                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| **Perform a Request**              | `req_perform()`, `req_retry()`                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| **Perform Multiple Requests**      | _(No functions included)_                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| **Handle the Response**            | `resp_body_raw()`, `resp_has_body()`, `resp_body_string()`, `resp_body_json()`,`resp_body_html()`, `resp_body_xml()`, `resp_check_content_type()`, `resp_content_type()`, `resp_encoding()`, `resp_date()`, `resp_headers()`, `resp_header()`, `resp_header_exists()`, `resp_link_url()`, `resp_raw()`, `resp_retry_after()`, `resp_status()`, `resp_status_desc()`, `resp_is_error()`,`resp_check_status()`, `resp_url()`, `resp_url_path()`, `resp_url_query()`, `resp_url_queries()` |
| **Miscellaneous Helpers**          | `curl_help()`, `secret_make_key()`, `secret_has_key()`, `url_parse()`, `url_build()`                                                                                                                                                                                                                                                                                                                                                                                                    |
| **OAuth**                          | `oauth_cache_path()`, `oauth_client()`, `oauth_redirect_uri()`, `oauth_token()`                                                                                                                                                                                                                                                                                                                                                                                                         |

## Examples

Creating and modifying the request:

**`HTTR.Request`** is the equivalent to R's `httr2_request` request S3 class. Several functions can be used to modify this request. These functions can modify the request's methods, body, headers, etc.

The **`request()`** function creates the **`HTTR.Request`** type. Without a body the request method defaults to GET. Using the `@chain` macro a request can be performed then the response can be then read as a `String` using the **`resp_body_string`** function. If no response function is used the request will return the response as the type [`HTTP.Messages.Response`](https://juliaweb.github.io/HTTP.jl/stable/reference/#HTTP.Messages.Response) from the `HTTP.jl` package:

```julia
using HTTR, Chain

@chain request("https://dummy.restapiexample.com/api/v1/employees") begin
    req_perform()
    resp_body_string()
    println()
end
```

To create a POST request add a request body to the request, one way to do this is using the **`req_body_json()`** function and adding the content type of `application/json`, so that the request can be recognized as json. The response can be then read as a json using the **`resp_body_json`** function:

```julia
using HTTR, Chain

@chain request("https://dummy.restapiexample.com/api/v1/create") begin
    req_body_json(Dict("name" => "test", "salary" => "123", "age" => "23"))
    req_headers(["Content-Type" => "application/json"])
    req_perform()
    resp_body_json()
    println()
end
```
