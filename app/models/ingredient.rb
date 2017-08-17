class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  validates :name, presence: true
end
