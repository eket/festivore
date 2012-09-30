

$ ->
  socket = window.socket = io.connect()

  socket.on 'connect', ->
    console.log 'connect'
    socket.emit 'auth', 'brainrape', (username)->
      console.log 'auth reply', username

  socket.on 'update', (update) ->
    console.log 'update', update

  socket.on 'welcome', ->
    console.log 'welcome'








class App extends Backbone.Router
  routes:
    "/": "map"
    "/friends": "friends"
    "/friends/add": "add_friend"
    "/friends/:friend": "friend"
    "/places": "categories"
    "/places/:category": "places"
    "/places/:category/:place": "place"
    "/places/:category/:place/edit": "edit_place"
    "/places/add": "add_place"

  map: -> return
  friends: -> return
  add_friend: -> return
  friend: -> return
  categories: -> return
  places: -> return
  place: -> return
  edit_place: -> return
  add_place: -> return



app = new App()
Backbone.history.start()#{pushState: on})
