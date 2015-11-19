class FixColumnPrivate < ActiveRecord::Migration
  def change
    rename_column :events, :private, :private_event
  end
end
