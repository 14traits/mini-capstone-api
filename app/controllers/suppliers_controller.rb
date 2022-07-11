class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render json: @suppliers.as_json
  end

  def find_supplier
    supplier = Supplier.find_by(id: params["id"])
    render json: supplier.as_json
  end

  def create
    @supplier = Supplier.new(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"],
    )
    if @supplier.save
      render json: supplier.as_json
    else
      render json: { errors: supplier.errors.full_messages }
    end
  end

  def update
    @supplier = Supplier.find_by(id: params["id"])

    @supplier.name = params["name"] || @supplier.name
    @supplier.email = params["email"] || @supplier.email
    @supplier.phone_number = params["phone_number"] || @supplier.phone_number

    if @supplier.save
      render template: "suppliers/show"
    else
      render json: { errors: supplier.errors.full_messages }
    end
  end

  def destroy
    supplier = Supplier.find_by(id: params["id"])
    supplier.destroy
    render json: { message: "Supplier was deleted!" }
  end
end
