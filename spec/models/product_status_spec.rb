require 'spec_helper'

describe Spree::ProductStatus do
  before do
    @product = create :product

    # don't feel like using FactoryGirl here...
    @status = @product.statuses.build do |s|
      s.description = Faker::Lorem.sentence
      s.status = 'pre_order'
    end
    @status.save!
  end

  let(:product) { @product }

  it "should remain purchasable for statuses which don't have that flag" do
    product.statuses.create do |s|
      s.description = Faker::Lorem.sentence
      s.status = 'unavailable'
    end
    product.purchasable?.should == false
  end

  it "should not be purchasable if a status exists with that flag" do
    product.purchasable?.should == true
  end

  # TODO maybe the helper method should exist in its own helper module
  # TODO not sure how to properly test helpers yet
  # it "should properly generate a message list via a helper" do
  #   helper.product_statuses_display(product).should include(status.description)
  # end
end
