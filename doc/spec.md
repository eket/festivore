|é>
===


URL endpoints
-------------

these serve as app entry points

`/`
`/friends/<username>`


API
---

client-server communication via socket.io

### socket.io events


    # auth [WIP: no-op]
    c->s auth(username)
     <-  friend_list : []
    # server gets email address from google

    # updates [WIP: no persistence]
    c->s update(update : ClientUpdate)
    s->c update(update : ServerUpdate)
    # server stores updates and relays them to online friends
    
    # friend list [WIP: no persistence]
    c->s add_friend(friend_username)
    c->s remove_friend(friend_username)
    
    # ping [done]
    c->s ping(to_username)
    s->c ping(from_username)
    # server forwards ping



### Data Structures


    ClientUpdate = { # c->s
      lat: 1.23
      lon: 2.34
    }
    
    ServerUpdate = { # s->c
      username: "username"
      timestamp: 2345
      lat: 1.23
      lon: 2.34
    }


### Web App

...




Android Glue
------------



### Android Service <-> WebView


...

### Android Service(Client) <-> Server



### Notifications


* friend started sharing location
  action: `/friends/<username>`

