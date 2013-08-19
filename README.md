# Omniauth - Socialcast Oauth2 

omniauth-socialcast-oauth2 is a gem based on omniauth-oauth2 which helps you integrate your application with Socialcast using oauth

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-socialcast'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-socialcast

## Usage

Example usage in a rails application

In the omniauth.rb file in initializers folder use this

'''
require 'omniauth'
require 'omniauth-socialcast-oauth2'

Rails.application.config.middleware.use OmniAuth::Builder do
  #Please make sure to substitute the :site option
  provider Omniauth::Strategies::Socialcast, 
  ENV['CLIENTID'], ENV['CLIENTSECRET'], :client_options => {:site => "https://demo.socialcast.com"}
end
'''

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
