Rails.application.routes.draw do
  root 'items#index'
  get 'search', to: "stores#index"
  get 'stores/:id', to: "stores#show"

  namespace :api do
    namespace :v1 do
      resources :items
    end
  end

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
end
