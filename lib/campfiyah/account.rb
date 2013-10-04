module Campfiyah
  class Account
    attr_accessor :subdomain, :token

    def initialize(subdomain, token)
      @adapter   = Campfiyah.adapter.new(subdomain, token)

      @token     = token
      @subdomain = subdomain
    end

    def user_by_id(id)
      user = @adapter.user_by_id(id)
      User.from_hash(user, @adapter)
    end

    def rooms
      @rooms ||= @adapter.rooms.map do |room|
        Room.from_hash(room, @adapter)
      end.sort { |a,b| a.name <=> b.name }
    end

    def room_by_id(id)
      if @rooms
        rooms.find {|r| r.id.to_i == id.to_i}
      else
        Room.from_hash(@adapter.room_by_id(id), @adapter)
      end
    end

    def room_by_name(name)
      rooms.find {|r| r.name == name}
    end
  end
end
