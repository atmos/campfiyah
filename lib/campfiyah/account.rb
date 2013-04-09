module Campfiyah
  class Account
    attr_accessor :subdomain, :token
    def initialize(subdomain, token)
      @adapter   = Campfiyah.adapter.new(subdomain, token)

      @token     = token
      @subdomain = subdomain
    end

    def rooms
      @rooms ||= @adapter.rooms.map do |room|
        Room.from_hash(room, @adapter)
      end
    end

    def find_room(name)
      rooms.find {|r| r.name == name}
    end
  end
end