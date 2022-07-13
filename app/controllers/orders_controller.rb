class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: orders.as_json
  end

  def show
    order = current_user.orders.find_by(id: params[:id])
    if current_user.id == order.user_id
      render json: order.as_json
    else
      render json: { message: "You must be logged in to see your orders" }, status: 406
    end
  end

  def create
    product = Product.find_by(id: params[:product_id])

    calculated_subtotal = product.prices * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if order.save
      render json: { message: "Order created successfully" }, status: :created
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end

  # def update
  #   order = Order.find_by(id: params[:id])
  #   order.user_id = params[:user_id] || order.user_id
  #   order.product_id = params[:product_id] || order.product_id
  #   order.quantity = params[:quantity] || order.quantity
  #   order.subtotal = params[:subtotal] || order.subtotal
  #   order.tax = params[:tax] || order.tax
  #   order.total = params[:total] || order.total
  #   if order.save #happy path
  #     render json: order.as_json
  #   else # sad path
  #     render json: { errors: order.errors.full_messages },
  #            status: 418
  #   end
  # end

  # def destroy
  #   order = Order.find_by(id: params[:id])
  #   order.destroy
  #   render json: { message: "Record of Order deleted successfully!" }
  # end
end
