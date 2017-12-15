class Cat < ActiveRecord::Base
  validates :name, :breed, :age, :gender, :bio, :presence => true
  scope :random, -> { order( 'RANDOM()' ).first }
end
