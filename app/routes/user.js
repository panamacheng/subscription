// user route routine.
// user.js
'use strict';

// Import npm modules.
const express = require('express'),
    router = express.Router();

var AuthController = require('../controllers/authController');

var UserRouters = function(passport) {
    // POST Routes
    router.post('/signup/parent', AuthController.signupParent);

    return router;
}

module.exports = UserRouters;