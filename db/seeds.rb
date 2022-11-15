# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 10 fake articles...'
10.times do
  article = Article.new(
    title: "#{Faker::Emotion.adjective} #{Faker::Science.science(:natural, :applied)}",
    content: Faker::Lorem.sentence(word_count: 30, supplemental: true, random_words_to_add: 8)
  )
  article.save
end
puts 'DONE!'
