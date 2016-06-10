class Destination < ActiveRecord::Base
	
	def self.search(query)
  		where("name LIKE ?", "%#{query.capitalize}%") 
	end

	extend Geocoder::Model::ActiveRecord
  		geocoded_by :location
  		after_validation :geocode #fetches the coordinates
end
