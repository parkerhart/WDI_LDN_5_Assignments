class Ingredient < ActiveRecord::Base
  
  attr_accessible :name

  has_and_belongs_to_many :recipes

  validates :name, presence: true

end
