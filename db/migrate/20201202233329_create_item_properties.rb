class CreateItemProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :item_properties do |t|
      t.string :slot
      t.string :kind
      t.string :effect
      t.integer :amount
      t.boolean :temporary

      t.timestamps
    end

    add_reference :item_properties, :armor, null: false, foreign_key: true
  end
end
