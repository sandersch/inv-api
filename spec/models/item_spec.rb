require 'rails_helper'

RSpec.describe Item, type: :model do
  subject(:item) { Item.new(item_attrs) }
  let(:valid_attrs) do
    {
      name: "a tested item",
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
  end
end
