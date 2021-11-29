class CreateCategoriesWithTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :categories_with_transactions do |t|

      t.timestamps
    end
    add_reference :categories_with_transactions, :category, null: false, foreign_key: true
    add_reference :categories_with_transactions, :transaction, null: false, foreign_key: true
  end
end
