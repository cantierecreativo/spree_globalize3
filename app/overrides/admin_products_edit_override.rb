path = "spree/admin/products/_form"
Deface::Override.new(:virtual_path => path,
                     :name => "admin_products_remove_name_field",
                     :remove => "code[erb-loud]:contains('field_container :name')",
                     :closing_selector => "code[erb-silent]:contains('end')",
                     :disabled => false)

Deface::Override.new(:virtual_path => path,
                     :name => "admin_products_remove_permalink_field",
                     :remove => "code[erb-loud]:contains('field_container :permalink')",
                     :closing_selector => "code[erb-silent]:contains('end')",
                     :disabled => false)

Deface::Override.new(:virtual_path => path,
                     :name => "admin_products_remove_description_field",
                     :remove => "code[erb-loud]:contains('field_container :description')",
                     :closing_selector => "code[erb-silent]:contains('end')",
                     :disabled => false)

Deface::Override.new(:virtual_path => path,
                     :name => "admin_products_add_translations_tabs",
                     :insert_top => "[data-hook='admin_product_form_left']",
                     :partial => "spree/admin/products_edit_form",
                     :disabled => false)
