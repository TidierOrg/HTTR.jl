using HTTP, Chain, JSON3

@kwdef mutable struct RequestHTTR
    base_url = nothing
    method = "GET"
    body = nothing
    header = nothing
    verbosity = 0
    retries = 0
    retry = false
end

function request(base_url::AbstractString)
    RequestHTTR(base_url = base_url)
end

function req_body_json(req::RequestHTTR, body::AbstractString)
    req.body = body
    req.header = ["Accept" => "application/json"]
    req.method = "POST"

    req
end

function req_body_json(req::RequestHTTR, body::Dict)
    req_body_json(req, body |> JSON3.write)
end

function req_method(req::RequestHTTR, method)
   req.method = method    

   req
end

function req_verbose(req::RequestHTTR, verbosity::Int)
    verbosity >= 0 || verbosity <= 3 || throw("verbosity must be 0, 1 or 2")

    req.verbosity = verbosity

    req    
end

function with_verbosity(req::RequestHTTR)
    req_verbose(req, 2)
end

function req_retry(req::RequestHTTR, retries::Int)
    req.retries = retries
    req.retry = n > 0 ? true : false

    req
end

function req_perform(req::RequestHTTR)

    v = [req.method, req.base_url, req.header, req.body]
    filter!(!isnothing, v)

    @show req
    
    HTTP.request(
        v...
        ;retry = req.retry
        ,retries = req.retries
        ,verbose = req.verbosity
    )

end

function resp_body_json(resp::HTTP.Messages.Response)
    @chain begin
        resp.body
        copy
        String
        JSON3.read(_, Dict)
    end    
end
