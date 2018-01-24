class CartsController < ApplicationController
  def show
  end

  def index
  end

  def new
  end

  def checkout

    @order = Order.new

  end


  def clean

    current_cart.clean!

    flash[:warning] = "已清空购物车"

    redirect_to cart_path

  end

end
