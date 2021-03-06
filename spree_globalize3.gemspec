# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_globalize3'
  s.version     = '1.3.2'
  s.summary     = 'Multilanguage support for Spree'
  s.description = 'Translatable Spree products, taxonomy and taxons with Globalize3'
  s.required_ruby_version = '>= 1.9.1'

  s.authors   = ['Francesco Disperati', 'David Librera']
  s.email     = ['me@nebirhos.com']
  s.homepage  = 'http://cantierecreativo.net'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.2'
  s.add_dependency 'globalize3', '~> 0.3.0'
  s.add_dependency 'i18n'
  s.add_dependency 'http_accept_language', '2.0.0.pre'
  s.add_dependency 'i18n_routing', '~> 0.6'

  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'pry-debugger'
end
