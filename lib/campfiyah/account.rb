module Campfiyah
  class Account
    attr_accessor :subdomain, :token
    def initialize(subdomain, token)
      @subdomain = subdomain
      @token = token
    end

    def rooms
      @rooms ||= rooms!
    end

    def rooms!
      rooms = [ ]
      response = connection.get("/rooms.json")
      if response.status == 200
        response.body["rooms"].each do |room|
          rooms << Room.from_hash(room, connection)
        end
      end

      rooms.sort { |a,b| b.updated_at <=> a.updated_at }
    end

    def find_room(name)
      rooms.find {|r| r.name == name}
    end

    private

    def connection
      @connection ||= connection!
    end

    def connection!
      endpoint = "https://#{subdomain}.campfirenow.com"
      Faraday.new endpoint do |conn|
        conn.request  :json
        conn.response :json, :content_type => /\bjson$/

        conn.basic_auth token, 'X'
        conn.adapter Faraday.default_adapter
      end
    end
  end
end