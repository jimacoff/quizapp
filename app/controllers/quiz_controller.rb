class QuizController < ApplicationController
  before_action :authenticate_user!
  before_action :all_questions, only: [:index, :submit]

  def index
  end

  def submit
    correct_option = 0
    all_answers = 75
    params[:question].each do |index,question|
      answer = @questions.where(id: question["id"]).pluck(:answer).first
      if answer == question["options"]
        correct_option += 5
        @updated_score = (correct_option.to_f/all_answers.to_f) * 100
      end
    end
    current_user.update_attribute(:score, @updated_score)
  end

  private

  def all_questions
    @questions = Question.all
  end

end
