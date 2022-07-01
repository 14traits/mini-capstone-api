Rails.application.routes.draw do

  # Gets
  get "/products" => "products#index"
  get "/find/:id", controller: "products", action: "find_product"

  # Posts
  post "/products" => "products#create"
end
