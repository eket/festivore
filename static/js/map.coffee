icon = L.icon
  iconUrl: '/static/img/marker-icon.png'
  shadowUrl: '/static/img/marker-shadow.png'
  iconAnchor: [13, 41]

tile_layer = L.tileLayer 'http://otile1.mqcdn.com/tiles/1.0.0/osm/{z}/{x}/{y}.png',
  attribution: 'Data, imagery and map information provided by MapQuest, Open Street Map <http://www.openstreetmap.org/> and contributors, CC-BY-SA <http://creativecommons.org/licenses/by-sa/2.0/> .; Tiles Courtesy of <a href="http://www.mapquest.com/" target="_blank">MapQuest</a> <img src="http://developer.mapquest.com/content/osm/mq_logo.png">',
  maxZoom: 18


class MapView extends Backbone.View
  el: $('#map')

  initialize: =>
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


