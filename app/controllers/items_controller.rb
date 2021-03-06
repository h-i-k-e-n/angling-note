class ItemsController < ApplicationController
  before_action :set_item, only: [:edit,:update,:destroy]

 
  def index
      @items = Item.all.order("created_at DESC").limit(10)
  end


  def new
      @item = Item.new
  end


  def create
      @item = Item.new(item_params)
   if @item.save
      redirect_to root_path
  else
      render :new
   end
end


  def show
      redirect_to root_path
  end


  def edit
  end


  def update
   if @item.update(item_params)
      redirect_to item_path(@item)
  else
      render :edit
   end
 end


  def destroy
      @item.destroy
      redirect_to root_path
  end


  def search
      @items = Item.search(params[:category_id])
  end



private
    def item_params
        params.require(:item).permit(:title, :image, :manufacturer, :purchase_date, :retailer, :price, :quantity, :weight, :memo,:category_id)
    end

    def set_item
        @item = Item.find(params[:id])
    end

end