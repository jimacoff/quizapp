require 'rails_helper'

RSpec.describe AdminController, type: :controller do

  before :each do
    @user =  FactoryGirl.build(:user, admin: true)
    @user1 = FactoryGirl.build(:user, admin: true)
  end

  describe 'GET index' do
    it 'render a list of users' do
      # user1, user2 = create(:user, score: 45), create(:user, score: 76)
      get :index
      expect(assigns(:users)).to match_array([@user, @user1])
    end
  end


end
