class ProductsController < ApplicationController
  before_action :all_product, only:[:index, :create, :update, :destroy, :edit, :update] 
  before_action :set_product, only:[:edit, :update, :destroy, :show]
  respond_to :html, :js
  
  def index
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
  end

  def edit
    
  end

  def update
    @product.update_attributes(product_params)
  end

  def delete
    @product = Product.find(params[:product_id])
  end

  def destroy
    @product.destroy
  end

private
  def product_params
    params.require(:product).permit(:name, :price)
  end

  def all_product
    @products = Product.all
  end
  def set_product
    @product = Product.find(params[:id])
  end
end