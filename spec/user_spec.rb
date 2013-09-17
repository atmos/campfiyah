require File.expand_path('../spec_helper',  __FILE__)

describe Campfiyah::User do
  context "finds a user by id" do
    it "finds her" do
      account = Campfiyah::Account.new(default_subdomain, default_token)
      user = account.user_by_id(420)

      expect(user.id).to eql(420)
      expect(user.name).to eql("atmos")
      expect(user.email).to eql("atmos@atmos.org")
    end
  end
end
