class MecodeProductsController < ApplicationController
allow_unauthenticated_access only: %i[ index show ]
  before_action :set_mecode_product, only: %i[ show edit update destroy]

  def show
  end

  def edit
  end

  def index
    @products = MecodeProduct.all
  end

  def destroy
    @product.destroy
    redirect_to mecode_products_path
  end

  def new
      @product = MecodeProduct.new
  end

  def create
    @product = MecodeProduct.new(product_name)
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end



  def update
    if @product.update(product_name)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def product_name
    params.expect(mecode_product: [ :name ])
  end

  def set_mecode_product
     @product = MecodeProduct .find(params[:id])
  end
end
