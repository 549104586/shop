Rails.application.routes.draw do
  get 'carts/show'

  get 'carts/index'

  get 'carts/new'

  get 'products/index'

  get 'products/show'

  devise_for :users
  root 'products#index'

  namespace :admin do
    resources :products
  end

  resource :cart

  resource :cart do
    collection do
      post :clean
    end


  end

  resource :cart_items


  resource :products do

    post :add_to_cart

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
