require "rails_helper"

RSpec.describe User, :type => :model do

  before(:all) do
    @user1 = create(:user)
  end

  it "is valid with valid attributes" do
    expect(@user1).to be_valid
  end

  it "has a unique username" do
    user2 = build(:user, password: "password", password_confirmation: "password")
    expect(user2).to_not be_valid
  end

  it "is not valid without a password" do
    user2 = build(:user, password: nil, password_confirmation: nil)
    expect(user2).to_not be_valid
  end

  it "is not valid without a username" do
    user2 = build(:user, username: nil, password: "password", password_confirmation: "password")
    expect(user2).to_not be_valid
  end

  it "is not valid without matching passwords" do
    user2 = build(:user, password: "password", password_confirmation: "pw")
    expect(user2).to_not be_valid
  end

end
