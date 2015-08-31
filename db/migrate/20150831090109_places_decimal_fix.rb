class PlacesDecimalFix < ActiveRecord::Migration
  def change
    remove_column :places, :latitude, :decimal
    remove_column :places, :longitude, :decimal
  	add_column :places, :latitude, :decimal, precision: 5, scale: 2
  	add_column :places, :longitude, :decimal, precision: 5, scale: 2
  end
end
