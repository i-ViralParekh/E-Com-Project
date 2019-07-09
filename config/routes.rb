Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products

  post '/line_items/:id/update_quantity' => 'line_items#update_quantity', as: 'line_items_update_quantity'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
