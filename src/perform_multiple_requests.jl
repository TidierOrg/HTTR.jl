# perform_multiple_requests.jl
"""
$req_perform_iterative_docstring
"""
function req_perform_iterative()

end

"""
$req_perform_parallel_docstring
"""
function req_perform_parallel()

end

"""
$req_perform_sequential_docstring
"""
function req_perform_sequential()

end

"""
$iterate_with_offset_docstring
"""
function iterate_with_offset(
    param_name::AbstractString,
    start::Int=1,
    offset::Int=1,
    resp_pages::Function=nothing,
    resp_complete::Function=nothing
)

end

"""
$iterate_with_cursor_docstring
"""
function iterate_with_cursor(param_name::AbstractString, resp_param_value::Function)

end

"""
$iterate_with_link_url_docstring
"""
function iterate_with_link_url(rel::AbstractString)

end

"""
$resps_successes_docstring
"""
function resps_successes()

end

"""
$resps_failures_docstring
"""
function resps_failures()

end

"""
$resps_requests_docstring
"""
function resps_requests()

end

"""
$resps_data_docstring
"""
function resps_data()

end