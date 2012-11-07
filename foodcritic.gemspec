lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'foodcritic/version'
Gem::Specification.new do |s|
  s.name = 'foodcritic'
  s.version = FoodCritic::VERSION
  s.description = 'Lint tool for Opscode Chef cookbooks.'
  s.summary = "foodcritic-#{s.version}"
  s.authors = ['Andrew Crump']
  s.homepage = 'http://acrmp.github.com/foodcritic'
  s.license = 'MIT'
  s.executables << 'foodcritic'
  s.add_dependency('gherkin', '~> 2.11.1')
  s.add_dependency('gist', '~> 3.1.0')
  s.add_dependency('nokogiri', '~> 1.5.0')
  s.add_dependency('pry')
  s.add_dependency('rak', '~> 1.4')
  s.add_dependency('treetop', '~> 1.4.10')
  s.add_dependency('yajl-ruby', '~> 1.1.0')
  s.add_dependency('erubis')
  s.files = Dir['lib/**/*.rb'] + Dir['*.json'] + %w{chef_dsl_metadata.json}
  s.required_ruby_version = '>= 1.9.2'
end
