Rails.application.routes.draw do
  resources :users
  resources :seshes

  resources :sanctuaries, :except => [:edit]
  root :to => 'sanctuaries#index'
end
