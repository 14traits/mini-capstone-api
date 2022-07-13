class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    # array = Array.new
    @products = Product.all
    # @products.each do |product|
    #   array << { id: product.id, name: product.name, prices: product.prices, image_url: product.image_url, description: product.description }
    # end
    render template: "products/index"
  end

  def find_product
    product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    @product = Product.new(
      name: params["name"],
      prices: params["prices"],
      image_url: params["image_url"],
      description: params["description"],
    )
    if @product.save
      render template: "products/show"
    else
      render json: { errors: product.errors.full_messages }
    end
  end

  def update
    @product = Product.find_by(id: params["id"])

    @product.name = params["name"] || @product.name
    @product.prices = params["prices"] || @product.prices
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description

    if @product.save
      render template: "products/show"
    else
      render json: { errors: product.errors.full_messages }
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "Product was deleted!" }
  end
end

# name: "Lightsaber",
# prices: "300000",
# image_url: "https://upload.wikimedia.org/wikipedia/commons/1/14/Lightsaber%2C_silver_hilt%2C_blue_blade.png",
# description: "'An elegant weapon for a more civilized age.' ― Obi-Wan Kenobi",
