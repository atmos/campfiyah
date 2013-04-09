module Campfiyah
  class Room
    attr_accessor :updated_at, :id, :name
    def initialize(id, name, updated_at, connection)
      @id, @name, @updated_at, @connection = id, name, updated_at, connection
    end

    def self.from_hash(hash, connection)
      new(hash["id"], hash["name"], hash["updated_at"], connection)
    end

    def message(message)
      response = @connection.post("/room/#{id}/speak.json") do |req|
        req.headers['Content-Type'] = 'application/json'
        req.body = %{{"message":{"body":#{quote(message)}}}}
      end
    end

    private
    def quote(string)
      if string.respond_to?(:to_json)
        string.to_json
      else
        string.inspect
      end
    end
  end
end