class PlansController < ApplicationController

def index
  @plans = Plan.all.order("created_at DESC")
end

def new
  @plan = Plan.new
end

def create
  @plan = Plan.new(plan_params)
  if @plan.save
    redirect_to plans_path
  else
    render :new
  end
end

def edit
  @plan = Plan.find(params[:id])
end

def update
  @plan = Plan.find(params[:id])
  if @plan.update(plan_params)
    redirect_to plan_path(@plan)
  else
    render :edit
  end
end

def show
  @plan = Plan.find(params[:id])
end

def destroy
  plan = Plan.find(params[:id])
  plan.destroy
  redirect_to plans_path
end


private
def plan_params
  params.require(:plan).permit(:title, :start, :end, :place, :adress, :memo,:image,
                               :skt_a,:skt_b,:skt_c,:skt_d,:skt_e,:skt_f,:skt_g,:skt_h,:skt_i,:skt_j,
                               :skm_a,:skm_b,:skm_c,:skm_d,:skm_e,:skm_f,:skm_g,:skm_h,:skm_i,:skm_j)
end

end
