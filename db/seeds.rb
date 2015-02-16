# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.create(name: "tim jones", password: "password")
Author.create(name: "parker jones", password: "password")
Author.create(name: "thomas jones", password: "password")

Survey.create(title: "Political Survey", description: "A brief questionnaire to determine your political stance.", author_id: 1)
Survey.create(title: "Pet Survey", description: "A brief questionnaire to determine the best domestic pet for you.", author_id: 2)
Survey.create(title: "Housing Survey", description: "A brief questionnaire to determine the best demographic for your next home.", author_id: 3)

QuestionType.create(name: "Long answer")
QuestionType.create(name: "Short answer")
QuestionType.create(name: "Single choice answer")
QuestionType.create(name: "Yes or no answer")

Question.create(text: "Do you think the President is doing a good job?", description: "White House, baby.", question_type_id: 1, survey_id: 1, order_number: 1)
Question.create(text: "Is Barack Hussein Obama a Democrat or a Republican", description: "Presidential, baby.", question_type_id: 1, survey_id: 1, order_number: 2)


Option.create(name: "options", question_id: 1, order_number: 1)
