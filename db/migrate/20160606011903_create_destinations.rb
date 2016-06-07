class CreateDestinations < ActiveRecord::Migration
  def change
  	create_table :destinations do |t|
       t.string :name
       t.string :country
       t.string :photo_url
       t.string :interesting_fact
       t.timestamps
   	end
  end
end
