console.log("linked!");


var map;
function initMap(lat, lng) {
  map = new google.maps.Map(document.getElementById('map'), {
  zoom: 13,
  center: {lat: lat, lng: lng}
  });
}

/////  Adds street view from requested   //////
var panorama;
function initialize(destination) {
  panorama = new google.maps.StreetViewPanorama(document.getElementById('street-view'), {
    position: {lat: destination.latitude, lng: destination.longitude},
    pov: {heading: 165, pitch: 0},
    zoom: 1
  });
}

/////  Adds map and SearchBox to find a new destination  //////
var destName;
var destCountry;
var destAddress;

function initAutocomplete() {
  var map = new google.maps.Map(document.getElementById('mapNewDest'), {
    center: {lat: 37.790841, lng: -122.4034689},
    zoom: 12,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  // Create the search box and link it to the UI element.
  var input = document.getElementById('pac-input');
  var searchBox = new google.maps.places.SearchBox(input);
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

  // Bias the SearchBox results towards current map's viewport.
  map.addListener('bounds_changed', function() {
    searchBox.setBounds(map.getBounds());
  });

  var markers = [];
  // Listen for the event fired when the user selects a prediction and retrieve
  // more details for that place.
  searchBox.addListener('places_changed', function() {
    var places = searchBox.getPlaces();
    console.log(places) 
    destName = places[0].name;
    destCountry = places[0].address_components[places[0].address_components.length - 1].long_name;
    destLocation = places[0].formatted_address;

    document.getElementById('destName').setAttribute("value", destName);
    document.getElementById('destCountry').setAttribute("value", destCountry);
    document.getElementById('destLocation').setAttribute("value", destLocation);

    console.log(places[0].id);
    console.log(places[0].place_id);  
    console.log(places[0]);
    console.log(places[0].geometry.location);
    if (places.length == 0) {
      return;
    }

    // Clear out the old markers.
    markers.forEach(function(marker) {
      marker.setMap(null);
    });
    markers = [];

    // For each place, get the icon, name and location.
    var bounds = new google.maps.LatLngBounds();
    places.forEach(function(place) {
      var icon = {
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(25, 25)
      };

      // Create a marker for each place.
      markers.push(new google.maps.Marker({
        map: map,
        icon: icon,
        title: place.name,
        position: place.geometry.location
      }));

      if (place.geometry.viewport) {
        // Only geocodes have viewport.
        bounds.union(place.geometry.viewport);
      } else {
        bounds.extend(place.geometry.location);
      }
    });
    map.fitBounds(bounds);
  });
}