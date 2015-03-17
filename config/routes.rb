Rails.application.routes.draw do

  get "/menu", to: "items#index"
  get "/items/:id", to: "items#show"

  get "/cart", to: "cart#index"
  post "/cart", to: "cart#create"
  delete "/cart", to: "cart#delete"
  put "/cart", to: "cart#update"

  resources :orders, only: [:create]

  namespace :categories do
    get '/', to: 'categories#index'
    get '/:id', to: 'categories#show'
    get '/item/:id', to: 'items#show'
    get '/items', to: 'items#index'
  end

  get "/login", to: "sessions#new", :as => "login"
  post "/login", to: "sessions#create"
  get "/logout", to: 'sessions#destroy'
  delete "/logout", to: 'sessions#destroy'

  resources :users, only: [:show]

  namespace 'admin' do
    get '/', to: 'dashboard#index', as: '/'
    resources :items
  end

  root 'home#index'

end
