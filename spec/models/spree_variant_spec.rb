require 'spec_helper'

describe Spree::Variant do
  context 'sale_price' do
    it 'has a sale price' do
      expect(subject).to respond_to :sale_price
    end
  end

  describe '#on_sale?' do
    context 'When sale price is present' do
      before do
        subject.sale_price = 10
      end

      it 'should be on sale' do
        expect(subject.on_sale?).to be_true
      end
    end

    context 'When sale price is not present' do
      it 'should not be on sale' do
        expect(subject.on_sale?).to be_false
      end
    end
  end
end
