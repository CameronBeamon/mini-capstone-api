require "http"
puts "Enter ID:"
id = gets.chomp.to_i
response = HTTP.get("http://localhost:3000/all_products/id=#{id}")

puts response
