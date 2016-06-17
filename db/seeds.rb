# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
puts 'SETTING UP THE QUIZ TABLE'

questions = [
    {
        name: "In which Programming language was Ruby written?",
        options: [
                    "Ruby was written in Pascal language and Ruby on Rails written in Ruby.",
                    "Ruby was written in ruby language and Ruby on Rails written in Ruby.",
                    "None of the above"
        ],
        answer: "Ruby was written in C language and Ruby on Rails written in Ruby."
    },

    {
        name: "What is MVC?",
        options: [
                    "Model, View, Controllers",
                    "Main, Void, Concise",
                    "Model, Void, Concise" ,
        ],
        answer: "Model, View, Controller"
    },

    {
        name: "How many types of relationships does a Model has?",
        options: [
                    "has_one",
                    "has_many",
                    "Model, View, Controller"
        ],
        answer: "all of the above"
    },
    #
    # {
    #     name: ,
    #     options: [
    #         {},
    #         {},
    #         {},
    #         {}
    #     ]
    # },
    #
    # {
    #     name: ,
    #     options: [
    #         {},
    #         {},
    #         {},
    #         {}
    #     ]
    # },
    #
    # {
    #     name: ,
    #     options: [
    #         {},
    #         {},
    #         {},
    #         {}
    #     ]
    # },
    #
    # {
    #     name: ,
    #     options: [
    #         {},
    #         {},
    #         {},
    #         {}
    #     ]
    # },
    #
    # {
    #     name: ,
    #     options: [
    #         {},
    #         {},
    #         {},
    #         {}
    #     ]
    # },
    #
    # {
    #     name: ,
    #     options: [
    #         {},
    #         {},
    #         {},
    #         {}
    #     ]
    # },
    #
    # {
    #     name: ,
    #     options: [
    #         {},
    #         {},
    #         {},
    #         {}
    #     ]
    # },

]

questions.each do |question|
  Question.create(question)
end

puts "THE QUESTION TABLE IS UPDATED"
