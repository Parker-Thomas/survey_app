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
