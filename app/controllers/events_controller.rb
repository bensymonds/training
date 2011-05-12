class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to(events_url, :notice => 'Event was successfully created.')
    else
      render :action => "new"
    end
  end

end
