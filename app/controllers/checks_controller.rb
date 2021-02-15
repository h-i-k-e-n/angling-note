class ChecksController < ApplicationController

  def index
    @checks = Check.all
    
  end

def new
  @check = Check.new
end

def create
  
  @check = Check.new(check_params)

if 
  @check.save
    redirect_to checks_path
  else
    render :new
  end
end

def show

  @check = Check.find(params[:id])
  
end

def destroy
  check = Check.find(params[:id])
  check.destroy
  redirect_to checks_path

end
private

  def check_params
    params.require(:check).permit(:title,check_item_id: [],check_list_id:[])
  
  
  end
end
