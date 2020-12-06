class ItemProperty < ApplicationRecord
  belongs_to :armor

  validates :slot, :kind, :effect, presence: true

  validates :amount, numericality: {
    only_integer: true,
  }, allow_nil: true
end
