class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new; end

  def create
    event = Eevnt.new(event_params)
    event.validate!
    event.save
  end

  private

  def event_params
    params.require(:event)
          .permit(:title, :logo, :place, :open_time_to_seller, :open_time_to_buyer, :close_time, :description)
  end
end
