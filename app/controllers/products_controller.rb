class ProductsController < ApplicationController

  def index
    # sort_option = params[:sort] || "id"
    
    sort_option = "id"
    sort_option = params[:sort] if (params[:sort] == "price" || params[:sort] == "name")

    sort_order = "ASC"
    sort_order = params[:sort_order] if params[:sort_order] == "DESC"

    products = Product.where("name iLIKE ?", "%#{params[:search]}%").reorder("#{sort_option} #{sort_order}")
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
    product.inventory = params[:inventory] || product.inventory
    product.save
    render json: product.as_json
  end
  
  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Your product, the #{product.name}, has been destroyed"}
  end
  
end
