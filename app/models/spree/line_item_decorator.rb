Spree::LineItem.class_eval do
  def copy_price
    if variant
      self.price = variant.on_sale? ? variant.sale_price : variant.price
      self.cost_price = variant.cost_price if cost_price.nil?
      self.currency = variant.currency if currency.nil?
    end
  end
end
