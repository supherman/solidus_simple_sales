Spree::Variant.class_eval do
  def on_sale?
    sale_price.present?
  end
end
