class ProductsController < ApplicationController
  def all_products
    array = Array.new
    products = Product.all
    products.each do |product|
      array << { name: product.name, prices: product.prices, image_url: product.image_url, description: product.description }
    end
    render json: array
  end

  def find_product
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
