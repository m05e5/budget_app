class CategoryWithEntity < ApplicationRecord
  belongs_to :category
  belongs_to :entity

  after_validation :update_total_amount

  def update_total_amount
    cat = Category.find(category_id)
    ent = Entity.find(entity_id)
    cat.update(total_amount: cat.total_amount + ent.amount)
    # cat.total_amount = category.total_amount + ent.amount
    # cat.save
  end
end
