class Admin::EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to admin_events_path
  end

  def index
    @events = Event.all
  end



  private
  def event_params
    params.require(:event).permit(:title, :start_time)
  end
end
