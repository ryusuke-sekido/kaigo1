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

  private
  def schedule_params
    params.require(:schedule).permit(:plan)
  end
end
