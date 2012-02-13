# require 'rubygems'
require 'rspec'
require 'simplecov'
require 'simplecov-gem-adapter'
SimpleCov.start 'gem'

require File.dirname(__FILE__) + '/../lib/certificate_authority'

RSpec.configure do |config|
  config.color_enabled = true
  config.filter_run_excluding pkcs11: true
end
