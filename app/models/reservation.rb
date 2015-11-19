class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates_presence_of :nb_reservation, :user_id, :event_id
end
