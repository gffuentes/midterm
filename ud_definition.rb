require_relative 'APILoad.rb'
require 'uri'



def ud_def(word)
	ud = api_load("http://api.urbandictionary.com/v0/define?term=#{URI.encode(word)}")
	if (ud["result_type"] == "no_results") || (ud["list"][0]["word"] == "")
	else
		puts " ++++URBAN DICTIONARY++++"
		puts "  Definition: " + ud["list"][0]["definition"]
	end
end
