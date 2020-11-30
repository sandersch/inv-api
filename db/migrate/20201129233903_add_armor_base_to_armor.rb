class AddArmorBaseToArmor < ActiveRecord::Migration[6.0]
  def change
    add_reference :armors, :armor_base, null: false, foreign_key: true
  end
end
