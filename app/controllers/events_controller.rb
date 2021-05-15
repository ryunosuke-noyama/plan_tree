class EventsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @plan = Plan.find(params[:plan_id])
    @event= Event.new
  end

  def create
    @company = Company.find(params[:company_id])
    @plan = Plan.find(params[:plan_id])
    @event= Event.new(event_params)
    if @event.save
      redirect_to company_plan_path(@company.id, @plan.id)
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:company_id])
    @plan = Plan.find(params[:plan_id])
    @event = Event.find(params[:id])
  end

  def edit
    @company = Company.find(params[:company_id])
    @plan = Plan.find(params[:plan_id])
    @event = Event.find(params[:id])
  end

  def update
    @company = Company.find(params[:company_id])
    @plan = Plan.find(params[:plan_id])
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to company_plan_path(@company.id, @plan.id)
    elsif 
      render :edit
    end
  end

  def destroy
    @company = Company.find(params[:company_id])
    @plan = Plan.find(params[:plan_id])
    @event = Event.find(params[:id])
    @event.destroy
  end

  private
  def event_params
    params.require(:event).permit(:title, :body, :start_date, :end_date, :limit_date, :status_id).merge(plan_id: @plan.id)
  end
end
