// The Activity model
'use strict';

var Sequelize = require('sequelize');
var db = require('../services/database');

// 1. The model schema.
var modelDefinition = {
    name: {
        type: Sequelize.STRING,
        allowNull: true
    }
}

// 2. The model options.
var modelOptions = {}

// 3. Define the Activity model.
var ActiveModel = db.define('tbl_activities', modelDefinition, modelOptions);

module.exports = ActiveModel;