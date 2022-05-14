class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @warehouses = warehouses_list
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new 
    @warehouses = warehouses_list
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'Product added!'   
      redirect_to root_path   
    else
      flash[:errors] = @product.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def edit   
    @product = Product.find(params[:id])
    @warehouses = warehouses_list   
  end 

  def update   
    @product = Product.find(params[:id])   
    if @product.update(product_params)   
      flash[:notice] = 'Product updated!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit product!'   
      render :edit 
    end  
  end   
  
  def destroy   
    @product = Product.find(params[:id])   
    @product.destroy      
    redirect_to root_path, status: :see_other 

    
  end   

  private

  def product_params
    params.require(:product).permit(:description, :price, :quantity, :warehouse_id)
  end
end
