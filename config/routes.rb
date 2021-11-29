Rails.application.routes.draw do
  root to: 'categories#index'
  get 'categories/:category_id/transactions', to: 'transactions#index'
  get 'categories/new', to: 'categories#new'
  get 'transactions/new', to: 'transactions#new'
  post 'transactions/create', to: 'transactions#create'
  post 'categories/create', to: 'categories#create'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
