require 'omniauth-oauth2'

module Omniauth
	module Strategies
		class Socialcast < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "socialcast"

        # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
      	:site => nil,
      	:authorize_url => '/oauth2/authorization?response_type=code',
      	:token_url => '/oauth2/token',
      	:proxy => ENV['http_proxy'] ? URI(ENV['http_proxy']) : nil
      }

      uid{ raw_info['user']['id'] }

     info do
     	{
     		:name => raw_info['user']['name'],
        :avatar16 => raw_info['user']['avatars']['square16'],
        :avatar30 => raw_info['user']['avatars']['square30'],
        :avatar45 => raw_info['user']['avatars']['square45'],
        :avatar70 => raw_info['user']['avatars']['square70'],
        :avatar140 => raw_info['user']['avatars']['square140']
     	}
     end

     # extra do
     # 	{
     # 		'raw_info' => raw_info
     # 	}
     # end

     def raw_info
     	@raw_info ||= access_token.get('/api/userinfo.json').parsed
     end

  end
end
end
