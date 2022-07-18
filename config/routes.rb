Rails.application.routes.draw do
  resources :images, defaults: { format: :json }

  # Gets
  get "/products" => "products#index"
  get "/products/:id", controller: "products", action: "find_product"
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  get "/cart" => "carted_products#index"
  get "/cart/:id" => "carted_products#show"

  # Posts
  post "/products" => "products#create"
  post "/suppliers" => "suppliers#create"
  post "/photos" => "images#create"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/orders" => "orders#create"
  post "/cart" => "carted_products#create"

  # Patch
  patch "/products/:id" => "products#update"
  patch "/suppliers/:id" => "suppliers#update"
  patch "/orders/:id" => "orders#update"

  # Delete
  delete "/products/:id" => "products#destroy"
  delete "/suppliers/:id" => "suppliers#destroy"
  delete "/orders/:id" => "orders#destroy"
  delete "/cart/:id" => "carted_products#destroy"
end
