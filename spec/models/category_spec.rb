require "rails_helper"

RSpec.describe Category, type: :model do
  context "valid attributes" do
    it "is valid" do
      category = Category.create(title: "new_cat", description: "cat")
      expect(category).to be_valid
    end
  end 

  context "invalid attributes" do
    it "is invalid without a title" do
      category = Category.create(description: "new_cat")
      expect(category).to_not be_valid
    end

    it "is invalid without a description" do
      category = Category.create(title: "new_cat")
      expect(category).to_not be_valid
    end
  end
end
