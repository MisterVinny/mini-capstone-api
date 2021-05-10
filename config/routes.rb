Rails.application.routes.draw do
  # Original non-REST routes
  # get "/first_product", controller: "products", action: "first_product"
  # # Query param route
  # get "/product_by_query", controller: "products", action: "product_by_id"
  
  # # URL segment param route
  # get "/product_by_seg/:id", controller: "products", action: "product_by_id"

  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "products/:id" => "products#update"
end
