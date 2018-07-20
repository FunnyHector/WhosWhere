Rails.application.routes.draw do
  root "depot/store#index", as: "depot_store_index"

  namespace :depot do
    resources :products
    resources :store, only: [:index]
  end

  namespace :whos_here do

  end
end
