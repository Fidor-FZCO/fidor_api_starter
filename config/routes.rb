Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  namespace :setup do
    resource :config, only: [:show]
  end

  get 'auth/new',     as: :login
  get 'auth/remove',  as: :logout
  get 'auth/callback'

  resources :transactions

end
