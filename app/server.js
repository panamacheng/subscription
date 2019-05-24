// Server.js
'use strict';

// Import node_modules.
var express = require('express'),
    http = require('http'),
    bodyParser = require('body-parser'),
    passport = require('passport'),
    path = require('path'),
    logger = require('morgan');

// Import project env file.
var config = require('./config/env');

// Initialization.
var app = express();
var port = process.env.PORT || config.server.port;

// Take issues on morgan.
app.use(logger('dev'));

// Parse as urlencoded and json.
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

// Set the static files location.
app.use(express.static(path.join(__dirname, '/../public')));

// Bundle routes.
app.use('/user', require('./routes/user')(passport));

// Catch all route.
app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, '/../public/app/views/index.html'));
});

// error handler
app.use(function(err, req, res, next) {
    // set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = req.app.get('env') === 'development' ? err : {};
  
    // render the error page
    res.status(err.status || 500);
    res.render('error');
});

// Start the server.
var httpServer = http.createServer(app);
httpServer.listen(port, function() {
    console.log((new Date()) + '=> Http Sever running on http://' + httpServer.address().address + ':' + port);
});
