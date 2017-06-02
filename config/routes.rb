Rails.application.routes.draw do
  get 'rooms/show'

  get 'users/show'

  root 'home#index'

  mount ActionCable.server => '/cable'
  resources :posts,:catalogs,:locations, :searches;
  devise_for :users, controllers: {registrations: "registrations"}
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
