module Spree
  class ProductStatus < ActiveRecord::Base
    # TODO in the future it might make sense to just load the possible statuses from the en.yml
    
    STATUSES = {
      :pre_order => {

      },
      :pre_sale => {
        :purchasable => false
      },
      :coming_soon => {
        :purchasable => false
      },
      :out_of_stock => {

      },
      :unavailable => {
        :purchasable => false
      }
    }  

    attr_accessible :description, :product, :status
    belongs_to :product, :class_name => 'Spree::Product', :touch => true
    validates :status, :presence => true

    def purchasable?
      STATUSES[status.to_sym][:purchasable].nil? || STATUSES[status.to_sym][:purchasable]
    end
  end
end