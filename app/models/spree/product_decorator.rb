Spree::Product.class_eval do
  has_many :statuses, :class_name => 'Spree::ProductStatus'

  def purchasable?
    statuses.inject(true) { |f, status| f && status.purchasable? }
  end
end