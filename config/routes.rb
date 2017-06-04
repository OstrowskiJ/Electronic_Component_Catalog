Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  get 'rooms/show'
  get 'catalogs/all'

  get 'users/show'
  get 'users/:id/catalogs' => 'users#catalogs', :as => :user_catalogs


  resources :users do
  member do
    get :catalogs
  end
end

  authenticated :user do
    root 'users#current_user_catalog'
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

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
