class Ingredient < ActiveRecord::Base

  has_many :quantities
  has_many :recipes, through: :quantities
  
  accepts_nested_attributes_for :quantities
  
end