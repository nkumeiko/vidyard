require File.expand_path("../lib/vidyard/version", __FILE__)

Gem::Specification.new do |s|
  s.name         = 'vidyard'
  s.version      = Vidyard::VERSION
  s.date         = '2014-12-15'
  s.summary      = "Vidyard API implemented in Ruby"
  s.description  = "This gem contains a handful of methods for interacting with Vidyard API."
  s.authors      = ["Taylor C. MacDonald"]
  s.email        = 'taylor@helloample.com'
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'
  s.homepage     = 'http://rubygems.org/gems/vidyard'
  s.license      = 'MIT'
  s.add_dependency 'httparty'
  s.add_dependency 'activesupport'
end
