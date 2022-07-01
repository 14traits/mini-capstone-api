Rails.application.routes.draw do

  # Gets
  get "/products" => "products#index"
  get "/products/:id", controller: "products", action: "find_product"

  # Posts
  post "/products" => "products#create"

  # Patch
  patch "/products/:id" => "products#update"

  # Delete
  delete "/products/:id" => "products#destroy"
end
