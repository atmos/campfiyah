module Campfiyah
  module Adapters
    class Adapter
      attr_accessor :subdomain, :token
      def initialize(subdomain, token)
        @subdomain, @token = subdomain, token
      end

      def rooms
        fail "Implement #rooms in your own adapter"
      end

      def message(room_id, message)
        fail "Implement #message in your own adapter"
      end
    end
  end
end

require 'campfiyah/adapters/http'
require 'campfiyah/adapters/memory'
