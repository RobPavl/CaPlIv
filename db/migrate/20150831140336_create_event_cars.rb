class CreateEventCars < ActiveRecord::Migration
  def change
    create_table :event_cars do |t|
      t.integer :car_id
      t.integer :event_id

      t.timestamps null: false
    end
    add_index :event_cars, :car_id
    add_index :event_cars, :event_id
  end
end
