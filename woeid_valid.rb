require_relative 'APILoad.rb'

#prepare_access_token('471773348-657J9sznTWD0YDORfv6iUEzEpT0BilHQKpAJwq3m','y7JUf6XKdzGM2UaDZk9iAq6wTWTdEoJet3JMo9Dj7Fnjk')

def woeid_request
  puts 'Please enter your location (Yahoo WOEID) - ex. 2514815'
  puts 'You can look up a woeid at http://woeid.rosselliot.co.nz/'
  loc = gets.chomp.to_i
  trend = api_load("https://api.twitter.com/1.1/trends/place.json?id=#{loc}")
  while trend == '404: Invalid URL' do
    puts 'Invalid WOEID, please try a different one'
    loc = gets.chomp.to_i
    trend = api_load("https://api.twitter.com/1.1/trends/place.json?id=#{loc}")
  end
  trend
end

#2514815