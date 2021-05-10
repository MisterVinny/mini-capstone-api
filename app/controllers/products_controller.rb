class ProductsController < ApplicationController
  # Original non-REST methods
  # def first_product
  #   product = Product.first
  #   render json: {product: product}
  # end
  
  # def product_by_id # Handles both Query and Segment param using :id
  #   id = params[:id]
  #   product = Product.find_by(id: id)
    
  #   product == nil ? (render json: {message: "Invalid product ID"}) : (render json: {product: product})
  # end

  def index
    products = Product.all
    render json: products.as_json
  end
  
  def show
    product = Product.find(params[:id])
    render json: product.as_json
  end
  

end
