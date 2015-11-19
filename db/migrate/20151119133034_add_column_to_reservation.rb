class AddColumnToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :participation, :boolean
  end
end
