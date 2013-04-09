require 'bundler/setup'

$:.push File.join(File.dirname(__FILE__), '..', 'lib')
require 'campfiyah'

RSpec.configure do |config|
  config.before do
  end

  config.after do
  end

  config.order = "random"
end