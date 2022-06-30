Rails.application.routes.draw do
  get "/all", controller: "products", action: "all_products"
end
