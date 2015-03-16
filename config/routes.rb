Rails.application.routes.draw do
  root "cart#index"

  get "/menu", to: "items#index"

  get "/cart", to: "cart#index"
  post "/cart", to: "cart#create"
  delete "/cart", to: "cart#delete"

  resources :categories do
    resources :items
  end

  get "login" => "sessions#new", :as => "login"
  post "login" => "sessions#create"
  get '/logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:show]
  resources :items

  namespace 'admin' do
    get '', to: 'dashboard#index', as: '/'
  end

  root 'home#index'

end
