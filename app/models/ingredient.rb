class Ingredient < ActiveRecord::Base
  attr_accessible :name

  has_many :quantities
  has_many :recipes, through: :quantities
end