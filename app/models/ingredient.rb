class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses # Step 1: Model generation

  validates :name, presence: true #Step 2: validations
  validates :name, uniqueness: true
end
