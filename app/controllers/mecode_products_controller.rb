class MecodeProductsController < ApplicationController
  def index
    @products = MecodeProduct.all
  end

  def show
   @product = MecodeProduct.find(params[:id])
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

  def edit
    @product = MecodeProduct.find(params[:id])
  end

  def update
    @product = MecodeProduct.find(params[:id])
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
end
