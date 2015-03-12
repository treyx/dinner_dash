Rails.application.routes.draw do
  get '/menu', to: 'items#index'
  resources :order_items, only: [:create]
  get "login" => "sessions#new", :as => "login"
  post "login" => "sessions#create"
  resources :users, only: [:show]
  
  namespace 'admin' do
    get '', to: 'dashboard#index', as: '/'
  end
end
