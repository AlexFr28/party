class ReservationsController < ApplicationController

  def create # pour event public (je m'inscris)
    @resa = Reservation.new(resa_param)
    @resa.participation = true
    if @resa.save
      redirect_to event_path(@resa.event_id), method: :get, notice: "Ta participation est validée pour l'événement #{@resa.event.name}"
    else
      redirect_to event_path(@resa.event_id), method: :get, alert: "Problème : contact la maintenance (create #{@resa.event.name} #{@resa.errors.messages})"
    end
  end

  def create_private_resa
    resa = Reservation.new()
    resa.paid = false
    resa.penalty = 0
    resa.nb_reservation = 0
    resa.note = 0
    resa.message = ""
    resa.user_id = params["user_id"]
    resa.event_id = params["event_id"]
    resa.participation = false
    resa.save

    redirect_to users_path(params["event_id"]), method: :get
  end

  def update # pour event privé (changement de valeur de participation (true/false))
    @resa = Reservation.find(params[:id])
    @resa.participation = !@resa.participation
    if @resa.update(resa_param)
      if @resa.participation
        message = "Ta participation est validée pour l'événement #{@resa.event.name}"
      else
        message = "Ta désinscription à l'événement #{@resa.event.name} a bien été prise en compte"
      end
      redirect_to event_path(@resa.event_id), notice: message
    else
      redirect_to event_path(@resa.event_id), method: :get, alert: "Problème : contact la maintenance (update #{@resa.event.name})"
    end
  end

  def destroy_private_resa
    resa = Reservation.where(event_id: params["event_id"], user_id)
    resa.delete

    redirect_to users_path(params["event_id"]), method: :get
  end

  def destroy # pour event public (je me désinscris)
    @resa = Reservation.find(params[:id])
    @resa.delete
    
    redirect_to event_path(@resa.event_id), notice: "Ta désinscription à l'événement #{@resa.event.name} a bien été prise en compte"
  end

  private

  def resa_param
    params.require(:reservation).permit(:paid, :penalty, :nb_reservation, :user_id, :event_id, :participation)
  end

end
