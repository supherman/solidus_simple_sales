require 'spec_helper'

describe Spree::LineItem do
  describe '#copy_price' do
    context 'with an on sale variant' do
      before do
        subject.variant = FactoryGirl.create :variant, price: 10, sale_price: 9
      end

      it 'sets price to variant sale price' do
        expect{subject.copy_price}.to change{subject.price}.to(9)
      end
    end

    context 'with a not on sale variant' do
      before do
        subject.variant = FactoryGirl.create :variant, price: 10.0
      end

      it 'sets price to variant price' do
        expect{subject.copy_price}.to change{subject.price}.to(10.0)
      end
    end
  end
end
