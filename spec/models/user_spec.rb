require "rails_helper"

RSpec.describe User, :type => :model do
  context "invalid attributes" do

    it "is invalid without a password" do
      user = User.new(email: "example@example.com")
      expect(user).to_not be_valid
    end

    it "is invalid without an email address" do
      user = User.new(password: "password")
      expect(user).to_not be_valid
    end
  end

  xit "is given a role of 'user' by default" do
    user = User.create(email_address: "example@example.com", username: "example", password_digest: "password")
    expect(user.role).to eq("user")
  end
end