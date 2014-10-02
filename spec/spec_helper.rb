require 'chefspec'
require 'chefspec/berkshelf'
require 'chefspec/server'

RSpec.configure do |config|
  config.log_level = :warn
  config.platform = 'centos'
  config.version = '6.4'
  config.formatter = :documentation
end
