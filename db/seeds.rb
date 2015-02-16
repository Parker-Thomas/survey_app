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
QuestionType.create(name: "Multiple Choice answer")
QuestionType.create(name: "Yes or no answer")

Question.create(text: "Do you think the President is doing a good job?", description: "White House, baby.", question_type_id: 1, survey_id: 1, order_number: 1)
Question.create(text: "What policy does Obama endorse?", description: "Presidential, baby.", question_type_id: 2, survey_id: 1, order_number: 2)
Question.create(text: "What color is the White House?", description: "Secretary of code, baby.", question_type_id: 3, survey_id: 1, order_number: 3)
Question.create(text: "Is Barack Hussein Obama a Democrat?", description: "Secretary of state, baby.", question_type_id: 4, survey_id: 1, order_number: 4)


Option.create(name: "blue", question_id: 3, order_number: 1)
Option.create(name: "green", question_id: 3, order_number: 2)
Option.create(name: "black", question_id: 3, order_number: 3)
Option.create(name: "white", question_id: 3, order_number: 4)


Option.create(name: "yes", question_id: 4, order_number: 1)
Option.create(name: "no", question_id: 4, order_number: 2)
