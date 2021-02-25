class PlansController < ApplicationController
  before_action :set_plan, only: [:edit,:update,:destroy,:show]

  def index
      @plans = Plan.all.order("created_at DESC")
  end


  def new
      @plan = Plan.new
  end


  def create
      @plan = Plan.new(plan_params)
  if   
        @plan.save
      redirect_to plans_path
    else
      render :new
  end
end


  def edit
  end


  def update
  if  @plan.update(plan_params)
      redirect_to plan_path(@plan)
    else
      render :edit
  end
end


  def show
  end


  def destroy
      @plan.destroy
      redirect_to plans_path
  end


private

  def plan_params
      params.require(:plan).permit(:title, :start_at, :end_at, :place, :adress, :memo,:image,
                                   :skt_a,:skt_b,:skt_c,:skt_d,:skt_e,:skt_f,:skt_g,:skt_h,:skt_i,:skt_j,
                                   :skm_a,:skm_b,:skm_c,:skm_d,:skm_e,:skm_f,:skm_g,:skm_h,:skm_i,:skm_j)
  end


  def set_plan
      @plan = Plan.find(params[:id])
  end

end
