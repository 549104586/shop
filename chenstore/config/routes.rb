Rails.application.routes.draw do
  get 'products/index'

  get 'products/show'

  devise_for :users
  root 'products#index'

  namespace :admin do
    resources :products
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
