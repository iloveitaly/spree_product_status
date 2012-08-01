module Spree
  module Admin
    class ProductStatusesController < ResourceController
      before_filter :load_data
      before_filter :set_product, :only => [:create, :update]

      def update_positions
        params[:positions].each do |id, index|
          Video.update_all(['position=?', index], ['id=?', id])
        end

        respond_to do |format|
          format.js  { render :text => 'Ok' }
        end
      end

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