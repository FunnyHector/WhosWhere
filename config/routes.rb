Rails.application.routes.draw do
  root "depot/store#index", as: "depot_store_index"

  namespace :depot do
    resources :products
    resources :store, only: [:index]
    resources :shopping_cart_items, only: [:create]
    resources :shopping_carts, only: [:show]
  end

  namespace :whos_here do

  end
end
