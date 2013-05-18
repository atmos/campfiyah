require File.expand_path('../spec_helper',  __FILE__)

describe Campfiyah::Account do
  context "lists all available rooms" do
    it "does shit" do
      account = Campfiyah::Account.new(default_subdomain, default_token)
      account.rooms.should_not be_empty

      room = account.rooms.first
      room.id.should_not be_nil
      room.name.should_not be_nil

      room = account.room_by_name("The Danger Room")
      room.message("woot").should be

      room = account.room_by_id(123456)
      room.name.should eql("The Danger Room")

      room = account.room_by_id("123456")
      room.name.should eql("The Danger Room")

      room.message("woot").should be
    end
  end
end
