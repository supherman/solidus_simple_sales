module Spree
  ShippingCalculator.class_eval do
    private

    def total(content_items)
      content_items.sum do |item|
        variant       = item.variant
        variant_price = (variant.on_sale? ? variant.sale_price : variant.price)
        item.quantity * variant_price
      end
    end
  end
end