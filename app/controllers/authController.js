// Authentication controller.
// authController.js
'use strict';

// Import NPM modules.
var jwt = require('jsonwebtoken'),
    bcrypt = require('bcrypt');

// Import Sub libraries.
var config = require('../config/env'),
    User = require('../models').User;

// Define Authentication Controller =>  AuthController.
var AuthController = {};

/**
 * Register a Parent.
 * @url {POST} /user/signup/parent
 * @param {OBJECT} req
 * @param {OBJECT} res
 */
AuthController.signupParent = function(req, res) {
    if(!req.body.email || !req.body.password) {
        res.status(404).json({
            message: 'Invalid signup with your user detail.'
        });
    } else {
        User.findAll({
            where: {
                email: req.body.email
            }
        }).then(function(users) {
            if(users.length == 0) {
                var firstName = req.body.firstName,
                    lastName = req.body.lastName,
                    email = req.body.email,
                    password = req.body.password,
                    userName = email.split('@')[0];

                hashPassword(password, function(hash){
                    var newUser = {
                        user_name: userName,
                        first_name: firstName,
                        last_name: lastName,
                        email: email,
                        password: hash
                    }

                    User.create(newUser)
                        .then(function(user) {
                            if(user) {
                                res.status(201).json({
                                    message: 'Signup successed!',
                                    id: user.dataValues.id
                                });
                            } else {
                                res.status(404).json({
                                    message: 'Signup failed!'
                                });
                            }
                            
                        })
                        .catch(function(error) {
                            console.log('Create new User error: ' + error);
                        });
                });
            } else {
                res.status(404).json({
                    message: 'This email already used by another user!'
                });
            }
        }).catch(function(error) {
            console.log('User validation error: ' + error);
        });
    }
}

function hashPassword(string, callback) {
    bcrypt.hash(string, 10)
        .then(function(password) {
            callback(password);
        });
}

module.exports = AuthController;