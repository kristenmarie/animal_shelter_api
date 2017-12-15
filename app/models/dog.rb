class Dog < ActiveRecord::Base
  validates :name, :breed, :age, :gender, :declawed, :location, :presence => true
end
