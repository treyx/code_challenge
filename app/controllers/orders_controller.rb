class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    order = Order.new(user_id: User.first.id, item_id: params[:id])
    if order.save
      OrderMailer.order_email(order).deliver
      flash[:notice] = "Your Order Has Been Submitted"
      redirect_to order_path(order)
    else
      errors = order.errors.full_messages
      flash[:error] = errors.to_sentence
      redirect_to root_path
    end
  end
end
