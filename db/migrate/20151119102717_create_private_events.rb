class CreatePrivateEvents < ActiveRecord::Migration

  def change
    create_table :private_events do |t|
      t.references :user, index: true
      t.references :event, index: true
      t.timestamps null: false
    end
  end
  
end
