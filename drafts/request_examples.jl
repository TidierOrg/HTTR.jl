using HTTR

dummy_url = "https://dummy.restapiexample.com/api/v1/employees"

get_01 = @chain begin
    request(dummy_url)
    req_perform
    resp_has_body
end

println(get_01)

get_02 = @chain begin
    request(dummy_url)
    req_perform
    resp_body_raw
end

println(get_02)

get_03 = @chain begin
    request(dummy_url)
    req_perform
    resp_body_string
end

println(get_03)

get_04 = @chain begin
    request(dummy_url)
    req_perform
    resp_body_json
end

println(get_04)

dummy_url = "https://dummy.restapiexample.com/api/v1/create"

post_01 = @chain begin
    req = request(dummy_url)
    req_body_json(Dict("name" => "test", "salary" => "123", "age" => "23"), type="")
    req_headers(["Content-Type" => "application/json"])
    req_perform
    resp_content_type
end

println(post_01)

post_02 = @chain begin
    req = request(dummy_url)
    req_body_json(Dict("name" => "test", "salary" => "123", "age" => "23"), type="")
    req_headers(["Content-Type" => "application/json"])
    req_perform
    resp_body_json
end

println(post_02)

post_03 = @chain begin
    req = request(dummy_url)
    req_perform
    resp_has_body
end

println(post_03)

post_04 = @chain begin
    req = request(dummy_url)
    req_body_json(Dict("name" => "test", "salary" => "123", "age" => "23"))
    req_perform
    resp_date
end

println(post_04)

post_05 = @chain begin
    req = request(dummy_url)
    req_body_json(Dict("name" => "test", "salary" => "123", "age" => "23"))
    req_user_agent("tester")
    req_headers(["Content-Type" => "application/json", "Host" => "dummy.restapiexample.com"])
    req_perform
    resp_headers
end

println(post_05)

xml_url = "https://www.w3schools.com/xml/note.xml"

get_xml = @chain begin
    request(xml_url)
    req_perform
    resp_body_xml
end

println(get_xml)

html_url = "https://www.example.com"

get_html = @chain begin
    request(html_url)
    req_pogress
    req_perform
    resp_body_html
end

println(get_html)