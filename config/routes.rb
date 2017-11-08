Rails.application.routes.draw do
  
  get 'chatrooms/show'

  devise_for :users
  
  resources :listings do
    resources :orders, only: [:new, :create, :show]
      collection do
          get 'search'
      end
  end
  get 'chat' => 'chatrooms#show'
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

  resources :messages, only: [:create, :show]

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
