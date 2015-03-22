require "rails_helper"

RSpec.describe User, :type => :model do
  context "valid attributes" do
    it "is valid" do
      user = User.create(email: "example@example.com", password: "password", full_name: "example")
      expect(user).to be_valid
    end
  end

  context "invalid attributes" do
    it "is invalid without a password" do
      user = User.new(email: "example@example.com")
      expect(user).to_not be_valid
    end

    it "is invalid without an email address" do
      user = User.new(password: "password")
      expect(user).to_not be_valid
    end

    it "is invalid without a full name" do
      user = User.new(email: "example@example.com", password: "password", display_name: "example")
      expect(user).to_not be_valid
    end
  end

  it "is given a role of 'user' by default" do
    user = User.create(email: "example@example.com", password: "password")
    expect(user.role).to eq("user")
  end
end
