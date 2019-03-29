require "httparty"
require "json"

puts "Welcome to Donald Trump Quotes!"
puts "Would you like to hear a funny Donald Trump quote? Enter (y) for yes or (n) for no"
answer = gets.chomp
i = 0

if answer == "y"
    response = HTTParty.get("https://api.tronalddump.io/random/quote")
    parse_response = JSON.parse(response.body)
    p parse_response["value"]
    #puts response.parse_response["value"]
else 
    puts "Well I don't know why you are here, as we're only providing Donald Trump Quotes!"
end