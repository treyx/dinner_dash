Rails.application.routes.draw do
  get '/menu', to: 'items#index'

  resources :order_items, only: [:create]
  resources :categories do
    resources :items
  end

end
