Rails.application.routes.draw do
  resources :sanctuaries, :except => [:edit]
end
