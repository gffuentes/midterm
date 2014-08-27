require_relative 'APILoad.rb'
require 'uri'

def ma_def(word)
	if word.include?("#")
		word[0] = ''
		ma = api_load("http://api.tagdef.com/one.#{URI.encode(word)}.json")
		if ma != '404: Invalid URL'
			puts " ++++++++TAGDEF+++++++++"
			puts "  Definition: " + ma["defs"]["def"]["text"]
		else
		end
	else
	end
end
