Rails.application.routes.draw do
  resources :users
  resources :sessions

  resources :sanctuaries, :except => [:edit]
  root :to => 'sanctuaries#index'
end
