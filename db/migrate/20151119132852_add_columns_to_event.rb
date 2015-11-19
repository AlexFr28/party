class AddColumnsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :description, :string
    add_column :events, :image, :string
  end
end
