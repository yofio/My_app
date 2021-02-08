Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :users, only: [:index, :new, :create, :show,  :edit, :destroy]
  end
  root "items#index"
  resources :items do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    get :search, on: :collection
  end
  resources :categories
end
