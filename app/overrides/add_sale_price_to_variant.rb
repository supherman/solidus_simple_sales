Deface::Override.new(
  :virtual_path => "spree/admin/variants/_form",
  :name => "add_admin_variant_sale_price",
  :insert_bottom => "div.right",
  :partial => 'spree/admin/shared/sale_form'
)
