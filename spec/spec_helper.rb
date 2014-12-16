require 'bundler/setup'
Bundler.setup

require 'vidyard/util'
require 'vidyard/client'
require 'vidyard/player'

require 'vcr'
require 'webmock/rspec'
require 'dotenv'

Dir[File.join(File.expand_path('../..', __FILE__),"spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  Dotenv.load
end
