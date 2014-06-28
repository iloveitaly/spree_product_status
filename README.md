SpreeProductStatus
==================

This Spree Commerce extension adds a status menu item to your product admin. Usage:  

* Product statuses can have attributes that effect the display of the product. In the default statuses included the pre-sale item causes `Spree::Product.purchasable?` to be `false`. Attributes associated with these statuses can easily be modified via `Spree::ProductStatus::STATUSES`
* Display status notifications associated with a product via `product_statuses_display` helper
* `bundle exec rails g spree_product_status:install` to install database migration

You can add custom statuses:

``ruby
Spree::ProductStatus::STATUSES[:reviewable_only] = {
  :purchasable => false
}
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2012 Michael Bianco, released under the New BSD License
