class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.datetime :date
      t.string :theme
      t.float :price_per_person
      t.integer :nb_person
      t.datetime :limit_payment
      t.boolean :private
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
