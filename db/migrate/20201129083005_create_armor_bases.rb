class CreateArmorBases < ActiveRecord::Migration[6.0]
  def change
    create_table :armor_bases do |t|
      t.string :group
      t.string :name
      t.integer :weight
      t.integer :rt
      t.integer :ap
      t.integer :cva

      t.timestamps
    end
  end
end
