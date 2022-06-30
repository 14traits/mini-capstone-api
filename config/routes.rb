Rails.application.routes.draw do
  get "/all", controller: "products", action: "all_products"
  get "/find/:id", controller: "products", action: "find_product"
end
