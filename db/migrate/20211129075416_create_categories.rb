class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon
      t.integer :total_amount, default: 0
      t.timestamps
    end
  end
end
