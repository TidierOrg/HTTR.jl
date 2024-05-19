using HTTR

url = "https://dummy.restapiexample.com/api/v1/employees"
request(url)
RequestHTTR(base_url = url)

resp = @chain begin
    request(url)
    req_perform
end
