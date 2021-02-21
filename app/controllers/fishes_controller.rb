class FishesController < ApplicationController
  def index
    @fishes = Fish.all
   
  end

  def new
    @fish = Fish.new
  end

  def create
  
   if @fish = Fish.create(fish_params)
    
    
     
      redirect_to fishes_path
    else
      render :new
    end
  end

def destroy
  
    @fish = Fish.find(params[:id])
    @fish.destroy
  redirect_to fishes_path
end

  private

  def fish_params;
    params.permit(:name,:memo,:image,:item_a,:item_b,:item_c)
  end
end
