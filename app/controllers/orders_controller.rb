class OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: orders
  end
  
  def create
    order = Order.new({
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
    }) 
    
    order.subtotal = order.quantity * order.product.price
    order.tax = order.subtotal * 0.09
    order.total = order.subtotal + order.tax
    order.save ? ( render json: order ) : ( render json: {errors: order.errors.full_messages}, status: :unprocessable_entity )
  end
  
  def show
    if current_user
      order = current_user.orders.find(params[:id])
      render json: order
    else
      render json: {error: "You must be logged in."}, status: :unprocessable_entity
    end
  end
  
end
