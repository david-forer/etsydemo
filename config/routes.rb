Rails.application.routes.draw do
  
  devise_for :users
  
  resources :listings do
    resources :orders, only: [:new, :create, :show]
  end

  resources :users
  get 'pages/about'
  get 'pages/contact'
  get 'pages/puppies'
  get 'pages/breeders'
  get 'pages/home'
  get 'seller' => "listings#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"
  get 'users' => "users#index"

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
