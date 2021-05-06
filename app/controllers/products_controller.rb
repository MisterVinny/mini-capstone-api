class ProductsController < ApplicationController

  def testing
    render json: {message: "hello?"}
  end
  
end
