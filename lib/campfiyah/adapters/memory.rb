module Campfiyah
  module Adapters
    class Memory < Campfiyah::Adapters::Adapter
      def rooms
        @rooms ||= Yajl.load(File.read("#{File.dirname(__FILE__)}/memory/rooms.json"))['rooms']
      end

      def message(room_id, message)
        true
      end
    end
  end
end