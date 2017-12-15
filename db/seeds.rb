class Seed

  def self.begin
    Cat.destroy_all
    Dog.destroy_all
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do
      Dog.create!(
        name: Faker::StarWars.character,
        breed: Faker::Dog.breed,
        age: Faker::Number.between(1,15),
        gender: Faker::Dog.gender,
        bio: Faker::StarWars.wookiee_sentence
      )

      Cat.create!(
        name: Faker::StarWars.character,
        breed: Faker::Cat.breed,
        age: Faker::Number.between(1,20),
        gender: Faker::Dog.gender,
        bio: Faker::StarWars.wookiee_sentence
      )


    end
  end
end

Seed.begin
