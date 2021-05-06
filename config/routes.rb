Rails.application.routes.draw do
  get "/test", controller: "products", action: "testing"
end
