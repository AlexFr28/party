class AddDefaultValueToReservation < ActiveRecord::Migration
  def change
    change_column :reservations, :paid, :boolean, :default => false
    change_column :reservations, :penalty, :float, :default => 0
    change_column :reservations, :note, :integer, :default => 0
    change_column :reservations, :message, :string, :default => ""
    change_column :reservations, :participation, :boolean, :default => false
  end
end
