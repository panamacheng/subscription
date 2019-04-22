// The State model
'use strict';

var Sequelize = require('sequelize');
var db = require('../services/database');

// 1. The model schema.
var modelDefinition = {
    name: {
        type: Sequelize.STRING,
        allowNull: true
    },
    state: {
        type: Sequelize.STRING,
        allowNull: true
    }
}

// 2. The model options.
var modelOptions = {}

// 3. Define the State model.
var StateModel = db.define('tbl_states', modelDefinition, modelOptions);

module.exports = StateModel;