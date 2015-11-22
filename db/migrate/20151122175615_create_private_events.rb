class CreatePrivateEvents < ActiveRecord::Migration
  def change
    create_table :private_events do |t|

      t.timestamps null: false
    end
  end
end
