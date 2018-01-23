class ProductsController < ApplicationController
  def index

    @products = Product.all

  end

  def show

    @product = Product.find(params[:id])

  end


  def add_to_cart

    @product = Product.find(params[:id])

    #current_cart.add_product_to_cart(@product)

    if !current_cart.product.include?(@product)

      current_cart.add_product_to_cart(@product)

      flash[:notice] = "你已成功将#{@product.title}加入购物车"
    else
      flash[:notice] = "你的购物车已经有此物品哦～"
    end





    redirct_to :back


  end


end
