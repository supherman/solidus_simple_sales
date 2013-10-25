require 'spec_helper'

describe Spree::Product do
  describe '#on_sale?' do
    subject { create(:product) }

    context 'When it has variants' do
      context 'When at least a variant on sale' do
        before do
          create(:variant, product: subject, sale_price: 10)
        end

        it 'should be true' do
          expect(subject.on_sale?).to be_true
        end
      end

      context 'When no variants on sale' do
        it 'should be false' do
          expect(subject.on_sale?).to be_false
        end
      end
    end

    context 'When it has no variants' do
      context 'When master variant is on sale' do
        before do
          subject.master.update_attribute :sale_price, 123
        end

        it 'should be true' do
          expect(subject.on_sale?).to be_true
        end
      end
    end
  end
end
