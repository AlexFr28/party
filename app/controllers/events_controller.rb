class EventsController < ApplicationController

  def index
    @events = Event.all.order("date ASC")
  end

  def historic
    reservations = current_user.reservations
    @events = []
    reservations.each do |reservation|
      @events << reservation.event
    end
    # @events = Event.all.order("date DESC")
  end

  def new
    @event = Event.new()
  end

  def create
    @event = Event.new(event_param)
    @event.date = DateTime.strptime(params["event"]["date"], "%Y-%m-%d")
    @event.limit_payment = DateTime.strptime(params["event"]["limit_payment"], "%Y-%m-%d")
    if @event.save
      if @event.private_event
        redirect_to users_path(@event.id), method: :get, notice: "\"#{@event.name}\" enregistré"
      else
        redirect_to event_path(@event.id), method: :get, notice: "\"#{@event.name}\" enregistré"
      end
    else
      render 'new'
    end
  end

  def show
    @user = current_user
    @event = Event.find(params[:id])

    @reservations = @event.reservations

    @rest = "illimité"
    @remaining = @event.remaining_places
    if @event.nb_person != 0
      @rest = "#{@remaining}/#{@event.nb_person}"
    end
    @resa = Reservation.where(user_id: current_user.id, event_id: @event.id)[0]

    # calcul de la pénalité
    if @event.limit_payment != nil
      d = @event.limit_payment.to_datetime
      day_of_penalty = ((DateTime.now.to_f - d.to_f)/60/60/24).ceil
      if @resa != nil && day_of_penalty > 0
        if @resa.participation
          penalty = 0.5 * day_of_penalty
        else
          penalty = 0
        end
        if @resa.penalty != penalty
          @resa.penalty = penalty
          @resa.save
        end
      end
    end

    @newresa = Reservation.new()
  end

  def payment
    resa = Reservation.find(params["resa_id"])
    resa.paid = !resa.paid
    resa.save
    redirect_to event_path(params["event_id"]), method: :get
  end

  private

  def event_param
    params.require(:event).permit(:name, :address, :date, :theme, :price_per_person, :nb_person, :limit_payment, :private_event, :user_id, :description, :image)
  end

end
