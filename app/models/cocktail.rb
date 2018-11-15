class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses # Step 1: Model generation
  
  validates :name, presence: true, allow_blank: false #Step 2: validations
  validates :name, uniqueness: true
end
