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

    def room_by_id(id)
      rooms.find {|r| r.id == id}
    end

    def room_by_name(name)
      rooms.find {|r| r.name == name}
    end
  end
end
