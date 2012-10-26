module Spree
  class ProductStatus < ActiveRecord::Base
    # this allows you to class_eval more status types
    (STATUSES ||= {}).merge!({
      :pre_order => {

      },
      :pre_sale => {
        :purchasable => false
      },
      :out_of_stock => {

      },
      :unavailable => {
        :purchasable => false
      }
    })    

    attr_accessible :description, :product, :status
    belongs_to :product, :class_name => 'Spree::Product', :touch => true
    validates :status, :presence => true

    def purchasable?
      STATUSES[status.to_sym][:purchasable].nil? || STATUSES[status.to_sym][:purchasable]
    end
  end
end