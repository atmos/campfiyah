module Campfiyah
  class User
    attr_accessor :id, :name, :email
    def initialize(adapter, id, name, email)
      @adapter, @id, @name, @email = adapter, id, name, email
    end

    def self.from_hash(hash, adapter)
      new(adapter, hash["id"], hash["name"], hash["email_address"])
    end
  end
end

