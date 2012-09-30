express = require('express')
app = express()
server = require('http').createServer app

app.set('views', __dirname + '/views');

app.get '/', (req, res) -> res.render 'index.jade'
app.use '/static',  express.static __dirname + '/static'



# io api

users = {}
io = require('socket.io').listen server
io.sockets.on "connection", (socket) ->

  socket.on "auth", (username, fn) ->
    return unless typeof(fn) == 'function'
    socket['username'] = username
    socket['friends'] = []
    users[username] = socket
    fn(username)

    socket.on "add_friend", (friend) ->
      socket.friends.push(friend)
      console.log "add_friend", friend

    socket.on "remove_friend", (friend) ->
      socket.friends.push(friend)
      console.log "remove_friend", friend

    socket.on "update", (update) ->
      update.usernme = socket.username
      console.log('update', update['usernme'], update)
      socket.set('update', update)

      for friend in socket.friends
        if users[friend]
          users[friend].emit('update', update)

      console.log 'update', update

    socket.on "ping", (friend) ->
      if friend in socket.friends and users[friend]
        users[friend].emit 'ping', socket.username


server.listen process.env.PORT or 9000
