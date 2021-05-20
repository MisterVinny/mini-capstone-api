class SuppliersController < ApplicationController

  def index
    suppliers = Supplier.all
    render json: suppliers.as_json
  end
  
  def create
    supplier = Supplier.find(params[:id])
  end
  
end
