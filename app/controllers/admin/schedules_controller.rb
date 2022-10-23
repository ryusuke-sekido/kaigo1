class Admin::SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new
    @customer = Customer.find(params[:customer_id])
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @schedule = @customer.schedules.new(schedule_params)
    @schedule.save
    redirect_to admin_customer_path(@customer.id)
  end

  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
    @schedules = @customer.schedules
  end

  def edit
   @customer = Customer.find(params[:customer_id])
   @schedule = Schedule.find(params[:id])
  end

  def update
   @customer = Customer.find(params[:customer_id])
   @schedule = Schedule.find(params[:id])
   @schedule.update(schedule_params)
   redirect_to admin_customer_path(@customer.id)
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to admin_customer_path(@customer.id)
  end

  private
  def schedule_params
    params.require(:schedule).permit(:customer_id, :plan)
  end
end
