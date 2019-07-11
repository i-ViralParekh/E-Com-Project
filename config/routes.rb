Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :l_users
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products do
  	get :who_bought, on: :member
  end

  post '/line_items/:id/update_quantity' => 'line_items#update_quantity', as: 'line_items_update_quantity'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
