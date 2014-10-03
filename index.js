var express = require('express');
var app = express();
app.get('/', function(req, res){
  res.send('hello world');
});
var port = process.env.NODE_PORt || 80;

var server = app.listen(port, function() {
  console.log('listening on port %d', server.address().port);
});

