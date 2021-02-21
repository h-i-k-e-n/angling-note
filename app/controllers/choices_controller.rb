class ChoicesController < ApplicationController

    def index
      @choices = Choice.all
      
    end
  
    def new
      @check = Check.find(params[:check_id])
      @choice = Choice.new
    end
    def create
      @check = Check.find(params[:check_id])
     if
      @choice = Choice.create(choice_params)
      
      redirect_to check_path(@check)
      else
        render :new
      end
    end
    
    def show
      
    end
  def destroy

  end
    
    private
  
    def choice_params
      params.require(:choice).permit(:name).merge(token: params[:token],check_id: params[:check_id])
    end
  end
  

