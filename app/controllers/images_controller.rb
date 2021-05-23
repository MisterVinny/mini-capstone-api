class ImagesController < ApplicationController

  def index
    images = Image.all
    render json: images.as_json
  end

  def create
    image = Image.new({
      url: params[:url],
      product_id: params[:product_id]
    })
    image.save ? ( render json: image ) : ( render json: {errors: image.errors.full_messages}, status: :unprocessable_entity )
  end

  def show
    image = Image.find(params[:id])
    render json: image
  end
  
  def update
    image = Image.find(params[:id])
    image.url = params[:url] || image.url
    image.product_id = params[:product_id] || image.product_id
    image.save ? ( render json: image ) : ( render json: {errors: image.errors.full_messages}, status: :unprocessable_entity )

  end
  
end
