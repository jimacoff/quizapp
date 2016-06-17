class Question
  include Mongoid::Document

  field :name, type: String
  field :answer, type: String
  field :options, type: Array

  def fetch_options
    options << answer
    options.shuffle
  end

end
