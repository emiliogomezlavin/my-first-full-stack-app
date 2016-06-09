class Destination < ActiveRecord::Base
	#.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
	extend Geocoder::Model::ActiveRecord
  	geocoded_by :location
  	after_validation :geocode #fetches the coordinates
end
