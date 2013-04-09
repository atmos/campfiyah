require 'bundler/setup'

$:.push File.join(File.dirname(__FILE__), '..', 'lib')
require 'campfiyah'
require 'pry'

Campfiyah.enable_mock!

RSpec.configure do |config|
  config.before do
  end
  config.after do
  end

  def default_token
    ENV['CAMPFIYAH_TOKEN'] ||= "0xdeadbeef"
  end

  def default_subdomain
    ENV['CAMPFIYAH_SUBDOMAIN'] ||= "github"
  end

  config.order = "random"
end