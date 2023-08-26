# config/routes.rb
Rails.application.routes.draw do
  root "static_pages#home"
  # users
  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"
  put "account", to: "users#update"
  get "account", to: "users#edit"
  delete "account", to: "users#destroy"
  # confirmations
  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token
  # sessions
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"
  # passwords
  resources :passwords, only: [:create, :edit, :new, :update], param: :password_reset_token

end
