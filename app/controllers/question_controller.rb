class QuestionController < ApplicationController
  before_action :authenticate_user!
  before_action :all_questions, only: [:index, :submit]

  def index
  end

  def submit
    score = Question.score(params[:question])
    current_user.update_attribute(:score, score)
    redirect_to root_path
  end

  private

  def all_questions
    @questions = Question.all
  end

end
