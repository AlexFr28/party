class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def show
    @event = Event.find(params[:id])
    @rest = "illimité"
    if @event.nb_person != 0
      @rest = "#{}/#{@event.nb_person}"
    end
  end
end
