class EventsController < ApplicationController
  # load_and_authorize_resource

  def index
    @events=Event.all
  end

  def show
    @events=Event.find(params[:id])

  end


  def destroy
    @event=Event.find(params[:id])
    @event.destroy
    redirect_to events_path

  end
  def create 
    Event.create(:title=>params[:title],:StartDate=>params[:StartDate],:EndDate=>params[:EndDate])
    
    redirect_to events_path
  end

end
