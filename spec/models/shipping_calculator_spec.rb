require 'spec_helper'

describe Spree::ShippingCalculator do
  describe '#total' do
    let(:line_item) { create(:line_item) }
    let(:package) { [line_item] }

    context 'When a line item is on sale' do
      before do
        line_item.variant.stub on_sale?: true
        line_item.variant.stub sale_price: 9.0
      end

      it 'takes into consideration the line item sale price' do
        expect(subject.send(:total,package)).to eq(9)
      end
    end

    context 'When a line item is not on sale' do
      before do
        line_item.variant.stub price: 10.0
      end

      it 'uses the line item normal price' do
        expect(subject.send(:total,package)).to eq(10)
      end
    end
  end
end