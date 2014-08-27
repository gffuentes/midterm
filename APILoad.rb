require 'json'
require 'rest-client'
require_relative 'PrepareAccessToken.rb'

def api_load(url)
  if RestClient.get(url){|response,request,result|response.code} == 404
   return "404: Invalid URL"
  elsif RestClient.get(url){|response,request,result|response.code} == 429
  	puts "429: Too many requests. Please try again in 15 minutes."
  else
  	JSON.load(RestClient.get url)
  end
end