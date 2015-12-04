class Quantity < ActiveRecord::Base
  attr_accessible :amount,
                  :ingredient,
                  :ingredient_attributes

  belongs_to :recipe
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient,
                                :reject_if => :all_blank
end