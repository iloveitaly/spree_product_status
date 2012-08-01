Deface::Override.new(:virtual_path => "spree/admin/shared/_product_tabs",
                     :name => "addd_statuses_product_tabs",
                     :insert_bottom => "[data-hook='admin_product_tabs']",
                     :text => %q{
<%= content_tag(:li, :class => current == t(:statuses) ? 'active' : '') do %>
  <%= link_to t(:statuses),  admin_product_product_statuses_url(@product)  %>
<% end %>
                     },
                     :disabled => false)