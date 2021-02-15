class PlansController < ApplicationController

def index
  @plans = Plan.all
end

def new
  @plan = Plan.new
end

def create
  @plan = Plan.new(plan_params)
  if @plan.save
    redirect_to root_path
  else
    render :new
  end
end


def show
end

def destroy
  plan = Plan.find(params[:id])
  plan.destroy
  redirect_to root_path
end


private
def plan_params
  params.require(:plan).permit(:title, :start, :end, :place, :adress, :memo,:image)
end

end
