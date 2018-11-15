class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient # Step 1: Model generation

  validates :description, presence: true
  validates :ingredient, presence: true 
  validates :cocktail, presence: true 
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id #Step 2: validations
end
