class CreateCategoryWithEntities < ActiveRecord::Migration[6.1]
  def change
    create_table :category_with_entities do |t|

      t.timestamps
    end
    add_reference :category_with_entities, :category, null: false, foreign_key: true
    add_reference :category_with_entities, :entity, null: false, foreign_key: true
  end
end
