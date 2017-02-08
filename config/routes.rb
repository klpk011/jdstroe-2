Rails.application.routes.draw do
  devise_for :users
root 'products#index'
resources :products do
  post :add_to_cart  
end

namespace :admin do
  resources :products
end
end
