require "rails_helper"

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  context "validation tests" do
    it "ensures name presence" do
      user = User.new(email: "sample@example.com", role: "user", password: "123", mobile: 9876543210).save
      expect(user).to eq(false)
    end
    it "ensures email presence" do
      user = User.new(name: "sushma", role: "user", password: "123", mobile: 9876543210).save
      expect(user).to eq(false)
    end
    it "ensures role presence" do
      user = User.new(email: "sample@example.com", role: "user", password: "123", mobile: 9876543210).save
      expect(user).to eq(false)
    end
    it "ensures mobile presence" do
      user = User.new(name: "sushma", email: "sample@example.com", role: "user", password: "123").save
      expect(user).to eq(false)
    end
    it "ensures password presence" do
      user = User.new(name: "sushma", email: "sample@example.com", role: "user", mobile: 9876543210).save
      expect(user).to eq(false)
    end
    it "should save successfully" do
      user = User.new(name: "First", password: "123", role: "user", email: "sample@example.com", mobile: 9876543210).save
      expect(user).to eq(true)
    end
  end
end
