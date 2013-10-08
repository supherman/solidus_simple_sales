Deface::Override.new(
  :virtual_path => "spree/admin/products/_form",
  :name => "add_admin_sale_price",
  :insert_top => "[data-hook='admin_product_form_right'], #admin_product_form_right[data-hook]",
  :sequence => 10,
  :partial => 'spree/admin/shared/sale_form'
)
