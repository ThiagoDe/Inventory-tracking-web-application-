class WarehousesController < ApplicationController
  
  def index
    @warehouses = Warehouse.all 
  end
  
    def show
    @warehouse = Warehouse.find(params[:id])
  end

  def new
    @warehouse = Warehouse.new 
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)
    if @warehouse.save
        
      redirect_to root_path   
    else
      flash[:errors] = @warehouse.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def edit   
    @warehouse = Warehouse.find(params[:id])   
  end 

  def update   
    @warehouse = Warehouse.find(params[:id])   
    if @warehouse.update(warehouse_params)   
      flash[:notice] = 'warehouse updated!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit warehouse!'   
      render :edit 
    end  
  end   
  
  def destroy   
    @warehouse = Warehouse.find(params[:id])
    @warehouse.products.each { |product| product.delete } 
    @warehouse.destroy 
      redirect_to root_path   

  end   

  private

  def warehouse_params
    params.require(:warehouse).permit(:name, :location)
  end
end
