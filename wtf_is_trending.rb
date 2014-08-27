require_relative 'PrepareAccessToken.rb'
require_relative 'ud_definition.rb'
require_relative 'ma_definition.rb'
require_relative 'woeid_valid.rb'
require 'yaml'

tkn = YAML::load(File.open('access_token.yml'))

prepare_access_token(tkn['token'],tkn['secret'])

#test woeid 2514815

t_trending = woeid_request
t_trending.each do |story|
  y = 1
  stories = story["trends"]
  stories.each do |x|
    name = x["name"]
    puts "#{y}. #{name}"
    y += 1
    ud_def(name)
    ma_def(name)
  end
end