console.log("linked!");

window.onload = function () {
  initMap();
  // initialize();
};

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
  zoom: 2,
  center: {lat: -28, lng: 137}
  });
}

var service = new google.maps.places.PlacesService(map);
console.log(service);


// var panorama;
// function initialize() {
//   panorama = new google.maps.StreetViewPanorama(document.getElementById('street-view'), {
//     position: {lat: 37.869260, lng: -122.254811},
//     pov: {heading: 165, pitch: 0},
//     zoom: 1
//   });
// }