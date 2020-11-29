class Armor < ApplicationRecord
  validates :name, :enchant, :weight, presence: true
  validates :enchant, numericality: {
    only_integer: true,
    less_than_or_equal_to: 50,
    greater_than_or_equal_to: -50,
  }
  validates :weight, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
end