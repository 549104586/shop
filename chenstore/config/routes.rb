Rails.application.routes.draw do

  resource :orders

  namespace :account do
   resource :orders
  end


  devise_for :users
  root 'products#index'

  namespace :admin do
    resources :products
  end

  resource :cart

  resource :cart do
    collection do
      post :clean
      post :checkout
    end


  end

  resource :cart_items


  resource :products do

    post :add_to_cart

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
