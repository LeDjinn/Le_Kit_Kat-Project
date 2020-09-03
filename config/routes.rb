Rails.application.routes.draw do
 
  devise_for :users
  get 'cards/show'
  resources :products
  resources :shops, only:[:index, :show, :mycard]
  resources :order_items
  resource :cards, only: [:index, :show ]
  resources :charges, only: [:new, :create]



  root 'shops#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end