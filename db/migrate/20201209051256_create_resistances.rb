class CreateResistances < ActiveRecord::Migration[6.0]
  def change
    create_table :resistances do |t|
      t.string :kind
      t.integer :percent_protection
      t.boolean :temporary

      t.timestamps
    end

    add_reference :resistances, :armor, null: false, foreign_key: true
  end
end
