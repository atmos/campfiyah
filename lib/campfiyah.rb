require 'yajl'
require 'faraday'
require 'faraday_middleware'

require "campfiyah/version"
require "campfiyah/account"
require "campfiyah/room"
require "campfiyah/user"
require "campfiyah/adapters"

module Campfiyah
  def self.enable_mock!
    @mock    = true
    @adapter = Campfiyah::Adapters::Memory
  end

  def self.adapter
    @adapter ||= Campfiyah::Adapters::HTTP
  end

  def self.adapter=(adapter)
    @adapter = adapter
  end
end
