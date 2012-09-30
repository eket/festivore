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


     # auth [WIP]
    c->s auth(access_token : string)
     <-  friend_list : []
    # server gets email address from google

    # updates
    c->s update(update : ClientUpdate)
    s->c update(update : ServerUpdate)
    
    # friend list
    c->s add_friend(username : string)
    c->s remove_friend(username : string)
    
    # ping
    c->s ping(to_username : string)
    s->c ping(from_username : string)



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

