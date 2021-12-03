class Category < ApplicationRecord
  validates :name, presence: true

  has_many :category_with_entities
  belongs_to :user
end
