Rails.application.routes.draw do
  get '/menu', to: 'items#index'
  resources :order_items, only: [:create]
  get "login" => "sessions#new", :as => "login"
end
