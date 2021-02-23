class ChecksController < ApplicationController

  def index
      @checks = Check.all.order("created_at DESC")
  end


  def new
      @check = Check.new
  end


  def create
      @check = Check.new(check_params)
    if @check.save
       redirect_to checks_path
    else
       render :new
    end
  end


  def show
      @check = Check.find(params[:id])
      @checks = Choice.where(check_id: params[:id])
  end


  def destroy
    if
      @check = Check.find(params[:id]) && Choice.find_by(check_id: params[:id])
      @check.destroy
      redirect_to check_path
    else
      @check = Check.find(params[:id])
      @check.destroy
      redirect_to checks_path
    end
  end


private

  def check_params
      params.require(:check).permit(:title,check_item_id: [],check_list_id:[])
  end

end
