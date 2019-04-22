// The Year model
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

// 3. Define the Year model.
var YearModel = db.define('tbl_years', modelDefinition, modelOptions);

module.exports = YearModel;