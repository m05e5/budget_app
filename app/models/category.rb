class Category < ApplicationRecord
  has_many :category_with_transactions
  belongs_to :user
end
