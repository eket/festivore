icon = L.icon
  iconUrl: '/static/img/marker-icon.png'
  shadowUrl: '/static/img/marker-shadow.png'
  iconAnchor: [13, 41]

tile_layer = L.tileLayer 'http://otile1.mqcdn.com/tiles/1.0.0/osm/{z}/{x}/{y}.png',
  attribution: '',
  maxZoom: 18


class MapView extends Backbone.View
  el: $('#map')

  initialize: =>
    $('#mapel').height $(window).height()
    @map = L.map('mapel').setView([51.505, -0.09], 13);
    tile_layer.addTo(@map);



    if (navigator.geolocation)
      navigator.geolocation.getCurrentPosition(@show_self, console.log)
    else
      error('not supported');

  show_self: (position) =>
    [lat, lon] = [position.coords.latitude, position.coords.longitude]
    @map.setView([lat, lon],16)
    @marker = L.marker([lat, lon], {icon:icon}).addTo(@map);



$ ->
  new MapView()


