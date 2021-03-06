Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  post "/orders/:id", to: "orders#create"

  namespace :api do
    namespace :v1 do
      resources :favorites, only: [:create], defaults: { format: :json }
    end
  end
end
