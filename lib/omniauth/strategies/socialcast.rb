require 'omniauth-oauth2'

module Omniauth
	module Strategies
		class Socialcast < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "socialcast"

        # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
      	#:site => (ENV['SOCIALCAST_DOMAIN'] || 'https://demo.socialcast.com'),
      	#:site => (ENV['SOCIALCAST_DOMAIN']),
      	:site => nil,
      	:authorize_url => '/oauth2/authorization?response_type=code',
      	:token_url => '/oauth2/token'
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
#      uid{ raw_info['id'] }

 #     info do
  #    	{
 #     		:name => raw_info['name'],
 #     		:email => raw_info['email']
 #     	}
 #     end

 #     extra do
 #     	{
 #     		'raw_info' => raw_info
 #     	}
 #     end

     def raw_info
     	@raw_info ||= access_token.get('/api/userinfo.json').parsed
      puts 'debug'
      puts access_token.to_s
     end
  end
end
end
