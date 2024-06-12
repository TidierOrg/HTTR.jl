using HTTR

url = "https://dummy.restapiexample.com/api/v1/employees"

resp = @chain begin
    request(url)
    req_perform
end

println(resp)