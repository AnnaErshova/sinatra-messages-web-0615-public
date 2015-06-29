# post_message.rb
# The contents of bin/post_message.rb must submit a POST request 
# to localhost:9292. It should post the to, from, and content variables 
# along with the request. 
# Lookup how to submit POST requests using net/http 
# and how to submit data along with that request.
require "net/http" # automaticlaly requires 'uri'
# require 'uri'

puts "Welcome!"
print "Who do you want to message? "
to = gets.strip
print "Who are you? "
from = gets.strip
print "Your message: "
content = gets.strip

puts "\n\n"
print "Sending message..."

uri = URI("http://localhost:9393")

# TODO: Post the message to the server
# How do you submit a POST request using Ruby?
# Maybe a library called Net::HTTP has a post method? Google.
response = Net::HTTP.post_form(uri, {"to"=> to, "from" => from, "content" => content})

if response.message == "OK"
 puts "It worked :)"
else
 puts "Oops, something went wrong :("
end

puts ""
