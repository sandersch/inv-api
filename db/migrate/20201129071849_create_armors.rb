class CreateArmors < ActiveRecord::Migration[6.0]
  def change
    create_table :armors do |t|
      t.string :name
      t.integer :enchant
      t.integer :ensorcell
      t.integer :critical_services
      t.integer :damage_services
      t.integer :weight

      t.timestamps
    end
  end
end
