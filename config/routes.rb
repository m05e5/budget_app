Rails.application.routes.draw do
  root to: 'categories#index'
  get 'categories/:category_id/entities', to: 'entities#index'
  get 'categories/new', to: 'categories#new'
  get 'entities/new', to: 'entities#new'
  post 'entities/create', to: 'entities#create'
  post 'categories/create', to: 'categories#create'
  post 'entities/add_cat', to: 'entities#add_cat'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
