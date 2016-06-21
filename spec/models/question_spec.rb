require 'rails_helper'

RSpec.describe Question, type: :model do

  before :each do
    @question = FactoryGirl.build(:question)
  end

  it "should add the answer to the options" do
    expect(@question.fetch_options.count).to eq(4)
  end

end
