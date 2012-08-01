class CreateProductStatuses < ActiveRecord::Migration
  def change
    create_table :spree_product_statuses do |t|
      t.references :product
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
