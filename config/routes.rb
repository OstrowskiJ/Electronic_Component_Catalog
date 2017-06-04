Rails.application.routes.draw do
  get 'rooms/show'

  get 'users/show'

  authenticated :user do
    root 'catalogs#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end

  resources :conversations do
      resources :messages
    end

  mount ActionCable.server => '/cable'
  resources :posts,:catalogs,:locations, :searches;
  devise_for :users, controllers: {registrations: "registrations"}
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
