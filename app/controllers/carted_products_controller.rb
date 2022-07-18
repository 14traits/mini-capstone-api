class CartedProductsController < ApplicationController
  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    carted_products = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    if carted_products.save
      render json: { message: "Item('s) added to shopping cart." }, status: :created
    else
      render json: { errors: carted_product.errors.full_messages }, status: :bad_request
    end
  end
end
