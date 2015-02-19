class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path
    else
      render 'new'
    end
  end
  def edit
    @event = Event.find(params[:id])
  end
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to events_path
    else
      render 'edit'
    end
  end
  def index
    @events = Event.all.order('created_at DESC')
    @event = Event.new
  end

  def event_params
    params.require(:event).permit(:description, :event_name, :time, :events_date, :marquee_status, :avatar)
  end


end
