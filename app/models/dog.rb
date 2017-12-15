class Dog < ActiveRecord::Base
  validates :name, :breed, :age, :gender, :bio, :presence => true
end
