Rails.application.routes.draw do
  resources :images, defaults: { format: :json }

  # Gets
  get "/products" => "products#index"
  get "/products/:id", controller: "products", action: "find_product"
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"

  # Posts
  post "/products" => "products#create"
  post "/suppliers" => "suppliers#create"
  post "/photos" => "images#create"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/orders" => "orders#create"

  # Patch
  patch "/products/:id" => "products#update"
  patch "/suppliers/:id" => "suppliers#update"
  patch "/orders/:id" => "orders#update"

  # Delete
  delete "/products/:id" => "products#destroy"
  delete "/suppliers/:id" => "suppliers#destroy"
  delete "/orders/:id" => "orders#destroy"
end
