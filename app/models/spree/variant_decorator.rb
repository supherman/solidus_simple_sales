Spree::Variant.class_eval do
  attr_accessible :sale_price

  def on_sale?
    sale_price.present?
  end
end
