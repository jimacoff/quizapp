require 'rails_helper'

RSpec.describe User, type: :model do

  before :each do
    @user = FactoryGirl.build(:user)
  end

  it "should create a new instance of a user given valid attributes" do
    User.create(@user.attributes)
  end

  it "is not valid without an email" do
    @user.email = nil
    expect(@user).to_not be_valid
  end

  it "is not valid without a password" do
    @user.password = nil
    expect(@user).to_not be_valid
  end

  it "expect user to have a default score of 0" do
    expect(@user.score).to eq(0)
  end

  it "is not an admin user" do
    expect(@user.admin).to eq(false)
  end

  it "is an admin user" do
    @user.admin = true
    expect(@user.admin).to eq(true)
  end

end
