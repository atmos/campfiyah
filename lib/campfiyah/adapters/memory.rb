module Campfiyah
  module Adapters
    class Memory < Campfiyah::Adapters::Adapter
      def rooms
        @rooms ||= Yajl.load(File.read("#{File.dirname(__FILE__)}/memory/rooms.json"))['rooms']
      end

      def room_by_id(id)
        @room ||= Yajl.load(File.read("#{File.dirname(__FILE__)}/memory/room.json"))['room']
      end

      def user_by_id(id)
        hash = Yajl.load(File.read("#{File.dirname(__FILE__)}/memory/user.json"))['user']
        hash['id'] = id
        hash
      end

      def message(room_id, message)
        true
      end
    end
  end
end
