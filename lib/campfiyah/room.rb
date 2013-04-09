module Campfiyah
  class Room
    attr_accessor :updated_at, :id, :name
    def initialize(id, name, updated_at)
      @id, @name, @updated_at = id, name, updated_at
    end

    def self.from_hash(hash)
      new(hash["id"], hash["name"], hash["updated_at"])
    end
  end
end