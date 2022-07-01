Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/find/:id", controller: "products", action: "find_product"
end
