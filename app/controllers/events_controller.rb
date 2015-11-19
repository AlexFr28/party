class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new()
  end

  def create
    # binding.pry
    @event = Event.new(event_param)
    @event.date = DateTime.strptime(params["event"]["date"], "%Y-%m-%d")
    @event.limit_payment = DateTime.strptime(params["event"]["limit_payment"], "%Y-%m-%d")
    if @event.save
      redirect_to users_path, notice: "\"#{@event.name}\" enregistré"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def show
    @user = current_user
    @event = Event.find(params[:id])
    @rest = "illimité"
    if @event.nb_person != 0
      @rest = "#{}/#{@event.nb_person}"
    end
    @resa = Reservation.where(user_id: current_user.id, event_id: @event.id)
  end

  private

  def event_param
    params.require(:event).permit(:name, :address, :date, :theme, :price_per_person, :nb_person, :limit_payment, :private_event, :user_id, :description, :image)
  end

end
