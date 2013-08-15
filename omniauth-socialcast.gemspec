# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-socialcast-oauth2/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-socialcast"
  spec.version       = Omniauth::SocialcastOauth2::VERSION
  spec.authors       = ["ganeshran"]
  spec.email         = ["ganesh.ranganathan.85@gmail.com"]
  spec.description   = ["something"]
  spec.summary       = ["summary"]
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_runtime_dependency 'omniauth', '~> 1.0'
  spec.add_runtime_dependency 'omniauth-oauth2'


  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
