class Question
  include Mongoid::Document

  field :name, type: String
  field :answer, type: String
  field :options, type: Array

  def fetch_options
    options << answer
    options.shuffle
  end

  def self.score(questions)
    correct_answer = 0
    all_answers = 15.0
    questions.each do |index,question|
      answer = find_by(id: question["id"]).answer
      correct_answer += 1 if answer == question["answer"]
    end
    (correct_answer/all_answers) * 100
  end

end
