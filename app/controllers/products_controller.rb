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

  def create
    product = Product.new({
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url]
    })
    product.save
    render json: {message: product}
  end
  
  def show
    product = Product.find(params[:id])
    render json: product.as_json
  end
  
  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.image_url = params[:image_url] || product.image_url
    product.save
    render json: product.as_json
  end
  
end
