class Destination < ActiveRecord::Base
	
	def self.search(query)
  		return Destination.where(country: query) 
	end

	extend Geocoder::Model::ActiveRecord
  		geocoded_by :location
  		after_validation :geocode #fetches the coordinates
end
