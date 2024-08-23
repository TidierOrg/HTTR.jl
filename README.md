# HTTR.jl

## What is HTTR.jl

`HTTR.jl` is a 100% Julia implementation of the R package, [httr2](https://github.com/r-lib/httr2)

## Installation

For the development version:

```julia
using Pkg
Pkg.add(url = "https://github.com/TidierOrg/HTTR.jl.git")
```

## Supported functions:

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
