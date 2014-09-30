"use strict";

const express = require('express');
const app = express();
app.get('/', function(req, res){
  res.send('hello world');
});
const port = process.env.NODE_PORt || 80;

const server = app.listen(port, function() {
  console.log('listening on port %d', server.address().port);
});

