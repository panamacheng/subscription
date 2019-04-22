// The Country model
'use strict';

var Sequelize = require('sequelize');
var db = require('../services/database');

// 1. The model schema.
var modelDefinition = {
    name: {
        type: Sequelize.STRING,
        allowNull: true
    },
    iso: {
        type: Sequelize.STRING,
        allowNull: true
    }
}

// 2. The model options.
var modelOptions = {}

// 3. Define the Country model.
var CountryModel = db.define('tbl_countries', modelDefinition, modelOptions);

module.exports = CountryModel;