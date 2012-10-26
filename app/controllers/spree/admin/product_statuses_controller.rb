module Spree
  module Admin
    class ProductStatusesController < ResourceController
      before_filter :load_data
      before_filter :set_product, :only => [:create, :update]

      private
  
      def location_after_save
        admin_product_product_statuses_url(@product)
      end

      def load_data
        @product = Product.find_by_permalink(params[:product_id])
      end

      def set_product
        @product_status.product = @product
      end
    end
  end
end