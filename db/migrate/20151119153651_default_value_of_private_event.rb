class DefaultValueOfPrivateEvent < ActiveRecord::Migration
  def change
    change_column :events, :private_event, :boolean, :default => false
  end
end
