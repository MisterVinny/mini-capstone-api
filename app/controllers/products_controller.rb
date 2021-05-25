class ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    sort_option = "id"
    sort_option = params[:sort] if (params[:sort] == "price" || params[:sort] == "name")

    sort_order = "ASC"
    sort_order = params[:sort_order] if params[:sort_order] == "DESC"

    # if params[:category]
    #   category = Category.find_by("name iLIKE ?", params[:category])
    #   products = category.products
    #   render json: products.sort_by { |k| k.name }
    # else
      products = Product.where("name iLIKE ?", "%#{params[:search]}%").reorder("#{sort_option} #{sort_order}")
      render json: products
    # end

  end

  def create
    product = Product.new({
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
    })
    # Adds ability to create a new image with the product
    if product.save
      ( Image.create({url: params[:url], product_id: product.id}) ) if params[:url]
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end
  
  def show
    product = Product.find(params[:id])
    render json: product
  end
  
  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.inventory_count = params[:inventory_count] || product.inventory_count
    product.save ? ( render json: product ) : ( render json: {errors: product.errors.full_messages}, status: :unprocessable_entity )
  end
  
  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Your product, the #{product.name}, has been destroyed"}
  end
  
end
