require File.expand_path('../spec_helper',  __FILE__)

describe Campfiyah::Account do
  context "lists all available rooms" do
    it "does shit" do
      account = Campfiyah::Account.new(ENV['CAMPFIYAH_SUBDOMAIN'], ENV['CAMPFIYAH_TOKEN'])
      account.rooms.should_not be_empty

      room = account.rooms.first
      room.id.should_not be_nil
      room.name.should_not be_nil
    end
  end
end