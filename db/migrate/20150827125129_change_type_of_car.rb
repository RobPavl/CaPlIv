class ChangeTypeOfCar < ActiveRecord::Migration
  def change
  	add_column :cars, :car_kind, :string
  	remove_column :cars, :type, :string
  end
end
