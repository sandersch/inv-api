require 'rails_helper'

RSpec.describe Armor, type: :model do
  subject(:item) { described_class.new(item_attrs) }
  let(:valid_attrs) do
    {
      name: "a tested item",
      enchant: 20,
      weight: 16,
    }
  end

  describe "a valid item" do
    let(:item_attrs) { valid_attrs }

    it { should be_valid }
  end

  describe "an invalid item" do
    describe "with no name" do
      let(:item_attrs) { valid_attrs.merge(name: "") }

      it { should be_invalid }
    end

    describe "with fractional weight" do
      let(:item_attrs) { valid_attrs.merge(weight: 3.14) }

      it { should be_invalid }
    end

    describe "with negative weight" do
      let(:item_attrs) { valid_attrs.merge(weight: -1) }

      it { should be_invalid }
    end

    describe "with fractional enchant" do
      let(:item_attrs) { valid_attrs.merge(weight: 3.14) }

      it { should be_invalid }
    end

    describe "with an impossibly low enchant" do
      let(:item_attrs) { valid_attrs.merge(enchant: -51) }

      it { should be_invalid }
    end

    describe "with an impossibly high enchant" do
      let(:item_attrs) { valid_attrs.merge(enchant: 51) }

      it { should be_invalid }
    end
  end
end
