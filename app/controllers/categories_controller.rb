class CategoriesController < ApplicationController

  def index
      @categories = Category.all
      @items = Item.all.order(created_at: :desc)
      @item = Item.where
  end


  def new
      @category = Category.new
  end
  

  def create
      @category = Category.new(category_params)
    if @category.save
       redirect_to root_path
    else
       render :new
    end
 end
  

private

  def category_params
      params.require(:category).permit(:category)
  end

end
