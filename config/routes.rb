Rails.application.routes.draw do

  # Gets
  get "/products" => "products#index"
  get "/product/:id", controller: "products", action: "find_product"

  # Posts
  post "/products" => "products#create"

  # Patch
  patch "/product/:id" => "products#update"

  # Delete
  delete "/product/:id" => "products#destroy"
end
