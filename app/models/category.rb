class Category < ApplicationRecord
  validates :name, :icon, presence: true

  has_many :category_with_entities
  has_one_attached :icon
  belongs_to :user
end
