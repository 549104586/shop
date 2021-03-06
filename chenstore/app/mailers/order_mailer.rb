class OrderMailer < ApplicationMailer

  def notify_order_placed(order)

    @order = order
    @user  = order.user
    @product_lists = @order.product_lists


    mail(to: @user.email,
         subject:"[CHENstore]感谢您完成本次的下单，以下是购物明细#{order.token}")

  end


  def apply_cancel(order)

    @order = order
    @user  = order.user
    @product_lists= @order.product_lists


    mail(to:@user.email,subject:"[CHENstore]您的订单#{order.token}申请取消订单")

  end

  def notify_ship(order)

    @order = order
    @user  = order.user
    @product_lists =@order.product_lists
    mail(to:@user.email,subject:"[CHENstore]您的订单#{order.token}已发货")

  end


  def notify_cancel(order)

    @order = order
    @user  = order.user
    @product_lists = @order.product_lists

    mail(to:@user.eamil,subject:"[CHENstore]您在订单#{order.token}已取消")


  end





end
