require "http"
reqiure "tty-table"

response = HTTP.get("http://localhost:3000/all.json").parse(:json)

array = Array.new
response.each do |product|
  array << [product["name"], product["prices"], product["image_url"], product["description"]]
end

puts "Crazy store, we have everything you never knew you needed"
puts "---------------------------------------------------------"
puts "\*\*\*\*\*\*\What would you like to look at?/*/*/*/*/*/*/"
puts

index = 1
array.length.times do
  puts "#{index}. #{array[index - 1][0]}"
  index += 1
end
