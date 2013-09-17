module Campfiyah
  class User
    attr_accessor :updated_at, :id, :name, :email
    def initialize(adapter, id, name, email, updated_at)
      @adapter, @id, @name, @email, @updated_at = adapter, id, name, email, updated_at
    end

    def self.from_hash(hash, adapter)
      new(adapter, hash["id"], hash["name"], hash["email"], hash["updated_at"])
    end
  end
end

