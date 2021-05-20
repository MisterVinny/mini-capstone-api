Rails.application.routes.draw do
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"
  post "/suppliers" => "suppliers#create"

  get "/images" => "images#index"
end
