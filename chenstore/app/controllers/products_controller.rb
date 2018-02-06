class ProductsController < ApplicationController
  def index

    @products = Product.all

end

  def search

    @products = Product.search(title_cont:params[:q]['title_cont'].strip).result



    end

  def show
    begin

    @product = Product.find(params[:id])

    rescue Exception => e
      puts e.message
      #puts e.backtrace.inspect
      redirect_to(:action=>'index')
      #redirect_to '/products/index' 会显示重定向太多
    end

  end


  def add_to_cart

    @product = Product.find(params[:id])

    #current_cart.add_product_to_cart(@product)

    if !current_cart.products.include?(@product)

      current_cart.add_product_to_cart(@product)

      flash[:notice] = "你已成功将#{@product.title}加入购物车"
    else
      flash[:notice] = "你的购物车已经有此物品哦～"
    end

    if params[:redirect]

      @url = params[:redirect]

    else

      @url = request.env["HTTP_REFEER"]
      @url ||= url_for :controller => "products",:action=>"index"

    end

    redirect_to @url


  end


end
