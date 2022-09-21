class Admin::CarendarsController < ApplicationController
  def new
    @carendar = Carendar.new
  end

  def create
   @carendar = Carendar.new(carendar_params)
   @carendar.save
   redirect_to admin_carendars_path
  end

  def index
    @carendars = Carendar.all
    @events = Event.all
  end



  private
  def carendar_params
    params.require(:carendar).permit(:title, :content, :start_time)
  end
end
