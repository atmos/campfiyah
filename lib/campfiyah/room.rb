module Campfiyah
  class Room
    attr_accessor :updated_at, :id, :name
    def initialize(adapter, id, name, updated_at)
      @adapter, @id, @name, @updated_at = adapter, id, name, updated_at
    end

    def self.from_hash(hash, adapter)
      new(adapter, hash["id"], hash["name"], hash["updated_at"])
    end

    def message(message)
      @adapter.message(id, message)
    end

    def users
      @users ||= users!
    end

    def users!
      room = @adapter.room_by_id(id)
      room['users'].map { |user| User.from_hash(user, @adapter) }
    end
  end
end
