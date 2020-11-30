class ArmorBase < ApplicationRecord
  has_many :armors, inverse_of: :armor_base
end
