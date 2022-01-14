require "http"
puts "Enter ID:"
id = gets.chomp.to_i
response = HTTP.post("http://localhost:3000/all_products/#{id}")
data = JSON.parse(response.body)
puts data["name"]
