Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users, only: [:show] do
    member do
      get :become
    end
  end
end
