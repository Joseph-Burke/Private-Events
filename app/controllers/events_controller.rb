class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = User.find(session[:user_id]).events.build(event_params) unless session[:user_id].nil?
    redirect_to events_path if @event.save
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:description, :date)
  end
end
