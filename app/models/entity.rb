class Entity < ApplicationRecord
  has_many :category_with_entities
  belongs_to :user
end
