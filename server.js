var express = require('express')

var port = 3001
var server = express()

server.use(express.static('/var/uploaded/enda'))
server.listen(port, function() {
  console.log(`Started stub server(port:${port})`)
})
