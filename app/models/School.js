// The School model
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

// 3. Define the School model.
var SchoolModel = db.define('tbl_schools', modelDefinition, modelOptions);

module.exports = SchoolModel;