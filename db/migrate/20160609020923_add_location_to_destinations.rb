class AddLocationToDestinations < ActiveRecord::Migration
  def change
  	add_column :destinations, :location, :text
  end
end
