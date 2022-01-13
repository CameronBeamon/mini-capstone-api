require "http"

response = HTTP.get("http://localhost:3000/all_products")
response = JSON.parse(response.body)
puts response[0]["name"]
