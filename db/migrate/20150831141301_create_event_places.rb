class CreateEventPlaces < ActiveRecord::Migration
  def change
    create_table :event_places do |t|
      t.integer :place_id
      t.integer :event_id

      t.timestamps null: false
    end
    add_index :event_places, :place_id
    add_index :event_places, :event_id
  end
end
