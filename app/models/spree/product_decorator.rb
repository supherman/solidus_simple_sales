Spree::Product.class_eval do
  delegate :sale_price, to: :master

  def on_sale?
    variants_including_master.any?{ |v| v.on_sale? }
  end
end
