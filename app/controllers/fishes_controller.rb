class FishesController < ApplicationController
  
  def index
    @fishes = Fish.all.order("created_at DESC")
    @fish = Fish.new
  end

  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.new(fish_params)
    if @fish.save
      redirect_to fishes_path
    else
      render :index
    end
  end

  def show
    @fish = Fish.find(params[:id])
  end

  def edit
    @fish = Fish.find(params[:id])
  end

  def update
       @fish = Fish.find(params[:id])
    if @fish.update(params.require(:fish).permit(:name,:memo,:image,:item_a,:item_b,:item_c))
       redirect_to fish_path(@fish)
    else
      render :edit
    end
  end

def destroy
  
    @fish = Fish.find(params[:id])
    @fish.destroy
  redirect_to fishes_path
end

def search

  @fishes = Fish.search(params[:keyword])
  
end

  private

  def fish_params;
    params.permit(:name,:memo,:image,:item_a,:item_b,:item_c)
  end
end
