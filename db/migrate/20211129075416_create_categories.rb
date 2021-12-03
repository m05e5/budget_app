class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon, default: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOYeuoelhM2iWeIjc--_YW3ZlqrFaIHOCqyQ&usqp=CAU'
      t.integer :total_amount, default: 0
      t.timestamps
    end
  end
end
