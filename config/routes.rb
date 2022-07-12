Rails.application.routes.draw do

  # Gets
  get "/products" => "products#index"
  get "/products/:id", controller: "products", action: "find_product"
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#find_supplier"

  # Posts
  post "/products" => "products#create"
  post "/suppliers" => "suppliers#create"
  post "/users" => "users#create"

  # Patch
  patch "/products/:id" => "products#update"
  patch "/suppliers/:id" => "suppliers#update"

  # Delete
  delete "/products/:id" => "products#destroy"
  delete "/suppliers/:id" => "suppliers#destroy"
end
