class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.boolean :paid
      t.float :penalty
      t.integer :nb_reservation
      t.integer :note
      t.string :message
      t.references :user, index: true
      t.references :event, index: true

      t.timestamps null: false
    end
  end
end
