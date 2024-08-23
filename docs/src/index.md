# HTTR.jl

`HTTR.jl` is a 100% Julia implementation of the R [httr2](https://github.com/r-lib/httr2) package.

The main purpose of `HTTR.jl` is to bridge the gap between the web and data analysis in Julia, offering a flexible and efficient interface for making HTTP requests while adhering to web standards. It leverages packages like [`EzXML.jl`](https://github.com/JuliaIO/EzXML.jl), [`HTTP.jl`](https://github.com/JuliaWeb/HTTP.jl), [`JLD2.jl`](https://github.com/JuliaIO/JLD2.jl), [`JSON3.jl`](https://github.com/quinnj/JSON3.jl), and [`URIs.jl`](https://github.com/JuliaWeb/URIs.jl) to create and handle requests and manage various types of web data.


HTTR.jl currently implement the following functions and types from httr:

| **Category**                       | **Function/Type**                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Create and Modify Requests**     | `request()`, `Request`, `req_body_raw()`, `req_body_file()`, `req_body_json()`, `req_headers()`,`req_method()`, `req_progress()`,`req_timeout()`, `req_url()`, `req_user_agent()`                                                                                                                                                                                                                                                                                                       |
| **Debugging and Testing Requests** | `last_response()`, `last_request()`, `req_verbose()`, `with_verbosity()`                                                                                                                                                                                                                                                                                                                                                                                                                |
| **Requests Authentication**        | `req_auth_basic()`, `req_auth_bearer_token()`                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| **Perform a Request**              | `req_perform()`, `req_retry()`                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| **Perform Multiple Requests**      | _(No functions included)_                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| **Handle the Response**            | `resp_body_raw()`, `resp_has_body()`, `resp_body_string()`, `resp_body_json()`,`resp_body_html()`, `resp_body_xml()`, `resp_check_content_type()`, `resp_content_type()`, `resp_encoding()`, `resp_date()`, `resp_headers()`, `resp_header()`, `resp_header_exists()`, `resp_link_url()`, `resp_raw()`, `resp_retry_after()`, `resp_status()`, `resp_status_desc()`, `resp_is_error()`,`resp_check_status()`, `resp_url()`, `resp_url_path()`, `resp_url_query()`, `resp_url_queries()` |
| **Miscellaneous Helpers**          | `curl_help()`, `secret_make_key()`, `secret_has_key()`, `url_parse()`, `url_build()`                                                                                                                                                                                                                                                                                                                                                                                                    |
| **OAuth**                          | `oauth_cache_path()`, `OAuthClient`, `oauth_client()`, `oauth_redirect_uri()`, `OAuthToken`, `oauth_token()`                                                                                                                                                                                                                                                                                                                                                                            |