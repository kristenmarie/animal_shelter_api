class Dog < ActiveRecord::Base
  validates :name, :breed, :age, :gender, :bio, :presence => true
  scope :random, -> { order( 'RANDOM()' ).first }
  scope :breed_search, -> (breed){ where('breed = ?', breed) }
  scope :age_search, -> (age){ where('age = ?', age) }
  scope :gender_search, -> (gender){ where('gender = ?', gender) }
end
