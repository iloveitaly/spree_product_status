Spree::Core::Engine.routes.draw do
 namespace :admin do
    resources :products do
      resources :product_statuses do

      end
    end
  end
end
