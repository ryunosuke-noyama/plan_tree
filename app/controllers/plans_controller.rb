class PlansController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @plan= Plan.new
  end

  def create
    @company = Company.find(params[:company_id])
    @plan= Plan.new(plan_params)
    if @plan.save
      redirect_to company_path(@company.id)
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:company_id])
    @plan = Plan.find(params[:id])
  end

  def destroy
    @company = Company.find(params[:company_id])
    @plan = Plan.find(params[:id])
    @plan.destroy
  end

  private
  def plan_params
    params.require(:plan).permit(:plan_name).merge(company_id: @company.id)
  end
end
