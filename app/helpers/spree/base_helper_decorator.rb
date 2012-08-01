Spree::BaseHelper.module_eval do
  def product_statuses_display(product)
    product.statuses.map do |status|
      content_tag(:div, class: "product-status product-status-#{status.status.dasherize}") do
        content_tag(:h6, t("product_status.#{status.status}")) + 
        content_tag(:p, status.description)
      end
    end.join("")
  end
end