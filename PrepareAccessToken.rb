require 'oauth'
require 'rest-client'
require_relative 'APILoad.rb'



# Exchange your oauth_token and oauth_token_secret for an AccessToken instance as a string.
def prepare_access_token(oauth_token, oauth_token_secret)
  consumer = OAuth::Consumer.new("zuDJxQuK96WA2s0k0g3tqHr6r", "PhiNIibo53GYGhXgoWJ1UDBoKDVGqhaeCmTiSWCwz3VKucxfTD",
    { :site => "https://api.twitter.com",
      :scheme => :header
    })
  # now create the access token object from passed values
  token_hash = { :oauth_token => oauth_token,
                 :oauth_token_secret => oauth_token_secret
               }
  access_token = OAuth::AccessToken.from_hash(consumer, token_hash )
  
  RestClient.add_before_execution_proc do |req, params|
    access_token.sign! req
  end

  return access_token
end