class AddBaneToArmor < ActiveRecord::Migration[6.0]
  def change
    add_column :armors, :bane_against, :string
    add_reference :armors, :bane_effect, foreign_key: {to_table: :item_properties}
  end
end
