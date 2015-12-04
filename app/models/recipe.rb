class Recipe < ActiveRecord::Base
  attr_accessible :title,
                  :description,
                  :instructions,
                  :quantities_attributes

  has_many :quantities
  has_many :ingredients,
           :through => :quantities

  accepts_nested_attributes_for :quantities,
           :reject_if => :all_blank,
           :allow_destroy => true
  accepts_nested_attributes_for :ingredients
end