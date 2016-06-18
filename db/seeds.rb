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

    {
        name: "Does Ruby supports Multiple Inheritance?" ,
        options: [
                  "Yes",
        ],
        answer: "No"
    },

    {
        name: "Which of the following commands add the data model info to the model file?" ,
        options: [
                  "Rails server",
                  "bundle install",
                  "annotate",
        ],
        answer: "generate model"
    },

    {
        name: "Which part of the MVC stack does ERB or HAML typically participate in?" ,
        options: [
                  "Controller",
                  "Class",
                  "Module"
        ],
        answer:  "View"

    },

    {
        name:"How can you get a list of all available rails generators?" ,
        options: [
                  "rake generate",
                  "rake generate --tasks",
                  "rails g --list"
        ],
        answer: "rails generate"
    },

    {
        name: "How do you list the routes of a Rails application?",
        options: [
                "rails show paths",
                "rake router:paths",
                "rails generate:routes"
        ],
        answer: "rake routes"
    },

    {
        name: "What is the pattern implemented by Ruby on Rails models?" ,
        options: [
                "Repository",
                "Data Mapper",
                "None of the above"
        ],
        answer: "ActiveRecord"
    },

    {
        name: "The method initialize within a class is always:" ,
        options: [
                "protected",
                "public",
                "default"
        ],
        answer: "private"
    },

    {
        name: "What is the difference between _url and _path while being used in routes" ,
        options: [
            "_path is relative while _url is absolute",
            "_path is used in views while _url is used in controllers",
            "_path is used in controllers while _url is used in views",
        ],
    answer:   "_path is absolute while _url is relative",

    },

    {
        name: "What is the recommended Rails way to iterate over records for display in a view" ,
        options: [
            "Use for to fetch individual records explicitly in a loop",
            "Use each to explicitly loop over a set of records",
        ],
        answer: "implicitly loop over a set of records, and send the partial being rendered a :collection"
    },

    {
        name: "Which of the following is the default way that Rails seeds data for tests?" ,
        options: [
            "Fixture factories",
            "Factories",
            "Data Migrations"
        ],
        answer: "Fixtures"
    },

    {
        name: "Which of the following is the best way to get the Rails root directory path?" ,
        options: [
            "Rails.root.show",
            "RAILS_ROOT",
            "Rails.show.root"
        ],
        answer: "Rails.root"
    },

    {
        name: "Which one IS NOT an application server?" ,
        options: [
            "Thin",
            "Phusion Passenger",
            "Unicorn"
        ],
        answer: "Thomahawk"
    },

]

questions.each do |question|
  Question.create(question)
end

puts "THE QUESTION TABLE IS UPDATED"
