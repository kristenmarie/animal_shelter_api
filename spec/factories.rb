FactoryBot.define do
  factory :dog do
    name Faker::StarWars.character
    breed Faker::Dog.breed
    age Faker::Number.between(1,15)
    gender Faker::Dog.gender
    bio Faker::StarWars.wookiee_sentence
  end

  factory :cat do
    name Faker::StarWars.character
    breed Faker::Cat.breed
    age Faker::Number.between(1,15)
    gender Faker::Dog.gender
    bio Faker::StarWars.wookiee_sentence
  end
end
