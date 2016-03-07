//require('newrelic');
var express = require('express');
var app = express();
app.get('/', function(req, res){
  res.send('hello world');
});
var port = 6000;

var server = app.listen(port, function() {
  console.log('listening on port %d', server.address().port);
});

var ws = require('websocket.io');
var websocket = ws.listen(8000, function() {
  console.log('start websocke');
});

