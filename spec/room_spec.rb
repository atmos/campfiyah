require File.expand_path('../spec_helper',  __FILE__)

describe Campfiyah::Room do
  context "sending a message" do
    it "messages a channel" do
      pending
    end

    it "finds users for a room" do
      account = Campfiyah::Account.new(default_subdomain, default_token)
      account.rooms.should_not be_empty

      room = account.room_by_name("The Danger Room")
      room.users.size.should eql(2)

      room = account.room_by_id(123456)
      room.name.should eql("The Danger Room")
    end
  end
end
