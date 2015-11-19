class Event < ActiveRecord::Base
  belongs_to :user
  has_many :reservations

  validates_presence_of :name, :address, :date, :price_per_person, :nb_person, :user_id

  # after_create :send_notifications

  def send_notifications
    # TODO
  end
end
