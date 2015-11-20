class DropTablePrivateEvents < ActiveRecord::Migration
  def change
    drop_table :private_events
  end
end
