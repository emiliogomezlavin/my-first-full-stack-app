require './models/destination'


# Artist.all.destroy
Destination.create({
	name: "Istanbul", 
	country: "Turkey",
	photo_url: "http://stunningplaces.net/wp-content/uploads/2014/08/6-Blue-Mosque-Istanbul.-Photo-by-visit-istanbul-turkey.com_.jpg", 
	interesting_fact: "Only city in the world that belongs to two different continents"
})


Destination.create({
	name: "Mexico City", 
	country: "Mexico",
	photo_url: "http://az616578.vo.msecnd.net/files/2015/12/20/635862387549042491-673939441_Overview-of-Mexico-City-001.jpg", 
	interesting_fact: "City with more museums in all the world"
})


Destination.create({
	name: "Queenstown", 
	country: "New Zealand",
	photo_url: "http://www.queenstownnz.co.nz/content/images/1942/996x423crop/Queenstown_in_Winter.jpg", 
	interesting_fact: "Extreme sports capital of the world"
})

Destination.create({
	name: "Four Embarcadero Center", 
	country: "San Francisco",
	photo_url: "https://upload.wikimedia.org/wikipedia/commons/0/0a/Alcatraz_Island_photo_D_Ramey_Logan.jpg", 
	interesting_fact: "Covas Workplace",
	location: "Four Embarcadero Center, 4 Embarcadero Center, San Francisco, CA 94111, USA
"
})

Destination.create({
	name: "Zocalo", 
	country: "Mexico",
	photo_url: "http://www.infrastructuremexico.com/wp-content/uploads/2015/11/zocalo21.jpg", 
	interesting_fact: "Big square",
	location: "Plaza de la Constitución S/N, Centro, Cuauhtémoc, 06010 Ciudad de México, D.F., Mexico"
})