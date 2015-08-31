class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :address
      t.string :city
      t.string :landmark
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
