Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :orders
  get 'api/orders', to: 'orders#fetch_orders'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'customers#new'
  resources :customers
end
