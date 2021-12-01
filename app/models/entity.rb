class Entity < ApplicationRecord
  validates :name, :amount, presence: true

  has_many :category_with_entities
  belongs_to :user
end
