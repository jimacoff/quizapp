class QuizController < ApplicationController
  before_action :all_questions, only: [:index, :submit]

  def index
  end

  def submit
    correct_option = 0
    params[:question].each do |index,question|
      answer = @questions.where(id: question["id"]).pluck(:answer).first
      if answer == question["options"]
        correct_option += 5
      end
    end
    current_user.update_attribute(:score, correct_option)
  end

  private

  def all_questions
    @questions = Question.all
  end

end
