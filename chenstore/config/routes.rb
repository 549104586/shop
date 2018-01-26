Rails.application.routes.draw do


  resources :orders

  namespace :account do
   resources :orders
  end

  resources :orders do
    member do

      post :pay_with_alipay
      post :pay_with_wechat
    end

  end


  devise_for :users
  root 'products#index'

  namespace :admin do
    resources :products
    resources :orders do
      member do

        post :cancel
        post :ship
        post :shipped
        post :return

      end
    end
  end

  resource :cart

  resource :cart do
    collection do
      post :clean
      post :checkout
    end


  end

  resources :cart_items


  resources :products do
    member do

    get :add_to_cart

    end

    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
