// The Major model
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

// 3. Define the Major model.
var MajorModel = db.define('tbl_majors', modelDefinition, modelOptions);

module.exports = MajorModel;