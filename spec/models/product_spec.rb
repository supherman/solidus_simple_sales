require 'spec_helper'

describe Spree::Product do
  describe '#on_sale?' do
    subject { create(:product) }

    context 'When at least a variant on sale' do
      before do
        create(:variant, product: subject, sale_price: 10)
      end

      it 'should be true' do
        expect(subject.on_sale?).to be_true
      end
    end

    context 'When any variants on sale' do
      it 'should be false' do
        expect(subject.on_sale?).to be_false
      end
    end
  end
end
