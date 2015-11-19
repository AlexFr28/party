class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validate_presence_of :paid, :nb_reservation, :user_id, :event_id
end
