using HTTR

base_url = "https://dummy.restapiexample.com/api/v1/employees"

resp_1 = @chain begin
    request(base_url)
    req_perform
    resp_has_body
end

println(resp_1)

resp_2 = @chain begin
    request(base_url)
    req_perform
    resp_body_raw
end

println(resp_2)

resp_3 = @chain begin
    request(base_url)
    req_perform
    resp_body_string
end

println(resp_3)

resp_4 = @chain begin
    request(base_url)
    req_perform
    resp_body_json
end

println(resp_4)
