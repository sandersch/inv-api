class Armor < ApplicationRecord
  belongs_to :armor_base
  alias_attribute :asg, :armor_base_id
  alias_attribute :base, :armor_base

  has_many :properties, class_name: "ItemProperty"
  has_many :resistances

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
  validates :armor_base, presence: true

  accepts_nested_attributes_for :properties
  accepts_nested_attributes_for :resistances

  def primary_property
    properties.where(slot: "primary").first
  end
end
