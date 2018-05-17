Rails.application.routes.draw do
  namespace :depot do
    resources :products
  end
end
