class ChoicesController < ApplicationController
  before_action :set_check, only: [:new,:create]


    def index
        @choices = Choice.all
    end
  

    def new
        @choice = Choice.new
    end

    
    def create
      if
        @choice = Choice.create(choice_params)
        redirect_to check_path(@check)
      else
        render :new
      end
    end
    

private
  
    def choice_params
        params.require(:choice).permit(:name).merge(token: params[:token],check_id: params[:check_id])
    end

    def set_check
        @check = Check.find(params[:check_id])
    end
end
  

