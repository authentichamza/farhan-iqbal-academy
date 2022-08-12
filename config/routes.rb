Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :homes, only: :index
  resources :abouts, only: :index
  resources :courses, only: :index
  resources :contacts, only: :create

  root to: 'homes#index'
end
