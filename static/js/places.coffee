

class PlacesView extends Backbone.View
  el: $('#places')
  initialize: ->
    console.log('pvi')


class PlaceCategoriesView extends Backbone.View
  el: $('#places')
  initialize: ->
    console.log('pcvi')




$ ->

  new PlacesView()
