load 'omniauth-oauth2'

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
      	:token_url => '/oauth2/token'
      }

      uid{ raw_info['user']['id'] }

     info do
     	{
     		:name => raw_info['user']['name']
        :avatars => {
                      :16 => ['user']['avatar']['square16']
                      :30 => ['user']['avatar']['square30']
                      :45 => ['user']['avatar']['square45']
                      :70 => ['user']['avatar']['square70']
                      :140 => ['user']['avatar']['square140']
                    }
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
