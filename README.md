# HTTR.jl

_Julia port of the R package, [httr2](https://github.com/r-lib/httr2)_.

## Supported functions:

### requests

#### create and modify
- [x] `request()`
- [x] `req_body_raw()`
- [x] `req_body_file()`
- [x] `req_body_json()`
- [ ] `req_body_json_modify()`
- [ ] `req_body_form()`
- [ ] `req_body_multipart()`
- [ ] `req_cookie_preserve()`
- [x] `req_headers()`
- [x] `req_method()`
- [ ] `req_options()`
- [x] `req_progress()`
- [ ] `req_proxy()`
- [ ] `req_template()`
- [x] `req_timeout()`
- [x] `req_url()`
- [ ] `req_url_query()`
- [ ] `req_url_path()`
- [ ] `req_url_path_append()`
- [x] `req_user_agent()`

#### debugging/testing
- [x] `last_response()`
- [x] `last_request()`
- [ ] `req_dry_run()`
- [x] `req_verbose()`
- [ ] `with_mocked_responses()`
- [ ] `local_mocked_responses()`
- [x] `with_verbosity()`

#### authentication
- [x] `req_auth_basic()`
- [x] `req_auth_bearer_token()`
- [ ] `req_oauth_auth_code()`
- [ ] `oauth_flow_auth_code()`
- [ ] `req_oauth_bearer_jwt()`
- [ ] `oauth_flow_bearer_jwt()`
- [ ] `req_oauth_client_credentials()`
- [ ] `oauth_flow_client_credentials()`
- [ ] `req_oauth_device()`
- [ ] `oauth_flow_device()`
- [ ] `req_oauth_password()`
- [ ] `oauth_flow_password()`
- [ ] `req_oauth_refresh()`
- [ ] `oauth_flow_refresh()`

### perform a request
- [x] `req_perform()`
- [ ] `req_perform_stream()`
- [ ] `req_cache()`
- [ ] `req_error()`
- [ ] `req_throttle()`
- [x] `req_retry()`

### perform multiple requests
- [ ] `req_perform_iterative()`
- [ ] `req_perform_parallel()`
- [ ] `req_perform_sequential()`
- [ ] `iterate_with_offset()`
- [ ] `iterate_with_cursor()`
- [ ] `iterate_with_link_url()`
- [ ] `resps_successes()`
- [ ] `resps_failures()`
- [ ] `resps_requests()`
- [ ] `resps_data()`

### responses
- [x] `resp_body_raw()`
- [x] `resp_has_body()`
- [x] `resp_body_string()`
- [x] `resp_body_json()`
- [x] `resp_body_html()`
- [x] `resp_body_xml()`
- [x] `resp_check_content_type()`
- [x] `resp_content_type()`
- [x] `resp_encoding()`
- [x] `resp_date()`
- [x] `resp_headers()`
- [x] `resp_header()`
- [x] `resp_header_exists()`
- [x] `resp_link_url()`
- [x] `resp_raw()`
- [x] `resp_retry_after()`
- [x] `resp_status()`
- [x] `resp_status_desc()`
- [x] `resp_is_error()`
- [x] `resp_check_status()`
- [x] `resp_url()`
- [x] `resp_url_path()`
- [x] `resp_url_query()`
- [x] `resp_url_queries()`

### miscellaenous helper
- [ ] `curl_translate()`
- [x] `curl_help()`
- [x] `secret_make_key()`
- [ ] `secret_encrypt()`
- [ ] `secret_decrypt()`
- [ ] `secret_write_jld()` equivalent to secret_write_rds
- [ ] `secret_read_jld()` equivalent to secret_read_rds
- [ ] `secret_decrypt_file()`
- [ ] `secret_encrypt_file()`
- [x] `secret_has_key()`
- [ ] `obfuscate()`
- [ ] `obfuscated()`
- [ ] `uobfuscate()`
- [x] `url_parse()`
- [x] `url_build()`

### oauth
- [x] `oauth_cache_path()`
- [x] `oauth_client()`
- [ ] `oauth_client_req_auth()`
- [ ] `oauth_client_req_auth_header()`
- [ ] `oauth_client_req_auth_body()`
- [ ] `oauth_client_req_auth_jwt_sig()`
- [x] `oauth_redirect_uri()`
- [x] `oauth_token()`
