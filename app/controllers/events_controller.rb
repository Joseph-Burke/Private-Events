class EventsController < ApplicationController
  def new
    @event = User.find(session[:user_id]).events.build
  end

  def create
    @event = User.find(session[:user_id]).events.build(event_params)
    redirect_to events_path if @event.save
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:name, :date)
  end
end
